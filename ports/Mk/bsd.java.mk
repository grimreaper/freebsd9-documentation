#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4
#
# bsd.java.mk - Support for Java-based ports.
#
# Created by: Ernst de Haan <znerd@FreeBSD.org>
#
# For FreeBSD committers:
# Please send all suggested changes to the maintainer instead of committing
# them to CVS yourself.
#
# $FreeBSD: ports/Mk/bsd.java.mk,v 1.90 2011/09/04 19:23:26 glewis Exp $
#

.if !defined(Java_Include)

Java_Include=				bsd.java.mk
Java_Include_MAINTAINER=	glewis@FreeBSD.org hq@FreeBSD.org

#-------------------------------------------------------------------------------
# Variables that each port can define:
#
# USE_JAVA			Should be defined to the remaining variables to have any
#					effect
#
# JAVA_VERSION		List of space-separated suitable java versions for the
#					port. An optional "+" allows you to specify a range of
#					versions. (allowed values: 1.5[+] 1.6[+] 1.7[+])
#
# JAVA_OS			List of space-separated suitable JDK port operating systems
#					for the port. (allowed values: native linux)
#
# JAVA_VENDOR		List of space-separated suitable JDK port vendors for the
#					port. (allowed values: freebsd bsdjava sun openjdk)
#
# JAVA_BUILD		When set, it means that the selected JDK port should be
#					added to build dependencies for the port.
#
# JAVA_RUN			This variable works exactly the same as JAVA_BUILD but
#					regarding run dependencies.
#
# USE_ANT			Should be defined when the port uses Apache Ant. Ant is thus
#					considered to be the sub-make command. When no 'do-build'
#					target is defined by the port, a default one will be set
#					that simply runs Ant according to MAKE_ENV, MAKE_ARGS and
#					ALL_TARGET. Read the documentation in bsd.port.mk for more
#					information.
#
#-------------------------------------------------------------------------------
# Variables defined for the port:
#
# JAVA_PORT			The name of the JDK port. (e.g. 'java/jdk16')
#
# JAVA_PORT_VERSION	The version of the JDK port. (e.g. '1.6')
#
# JAVA_PORT_OS		The operating system used by the JDK port. (e.g. 'linux')
#
# JAVA_PORT_VENDOR	The vendor of the JDK port. (e.g. 'sun')
#
# JAVA_PORT_OS_DESCRIPTION		Description of the operating system used by the
#								JDK port. (e.g. 'Linux')
#
# JAVA_PORT_VENDOR_DESCRIPTION	Description of the vendor of the JDK port.
#								(e.g. 'FreeBSD Foundation')
#
# JAVA_HOME			Path to the installation directory of the JDK. (e.g.
#					'/usr/local/jdk1.6.0')
#
# JAVAC				Path to the Java compiler to use. (e.g.
#					'/usr/local/jdk1.6.0/bin/javac' or '/usr/local/bin/javac')
#
# JAR				Path to the JAR tool to use. (e.g.
#					'/usr/local/jdk1.6.0/bin/jar' or '/usr/local/bin/fastjar')
#
# APPLETVIEWER		Path to the appletviewer utility. (e.g.
#					'/usr/local/linux-jdk1.6.0/bin/appletviewer')
#
# JAVA				Path to the java executable. Use this for executing Java
#					programs. (e.g. '/usr/local/jdk1.6.0/bin/java')
#
# JAVADOC			Path to the javadoc utility program.
#
# JAVAH				Path to the javah program.
#
# JAVAP				Path to the javap program.
#
# JAVA_KEYTOOL		Path to the keytool utility program.
#
# JAVA_N2A			Path to the native2ascii tool.
#
# JAVA_POLICYTOOL	Path to the policytool program.
#
# JAVA_SERIALVER	Path to the serialver utility program.
#
# RMIC				Path to the RMI stub/skeleton generator, rmic.
#
# RMIREGISTRY		Path to the RMI registry program, rmiregistry.
#
# RMID				Path to the RMI daemon program.
#
# JAVA_CLASSES		Path to the archive that contains the JDK class files. On
#					most JDKs, this is ${JAVA_HOME}/jre/lib/rt.jar.
#
# JAVASHAREDIR		The base directory for all shared Java resources.
#
# JAVAJARDIR		The directory where a port should install JAR files.
#
# JAVALIBDIR		The directory where JAR files installed by other ports
#					are located.
#
#-------------------------------------------------------------------------------
# Porter's hints
#
# To retrieve the Major version number from JAVA_PORT_VERSION (e.g. "1.6"):
#		-> ${JAVA_PORT_VERSION:C/^([0-9])\.([0-9])(.*)$/\1.\2/}
#
#-------------------------------------------------------------------------------
# There are the following stages:
#
# Stage 1: Define constants
# Stage 2: Determine which JDK ports are installed and which JDK ports are
#		   suitable
# Stage 3: Decide the exact JDK to use (or install)
# Stage 4: Add any dependencies if necessary
# Stage 5: Define all settings for the port to use
#

.	if defined(USE_JAVA)


#-------------------------------------------------------------------------------
# Stage 1: Define constants
#

# System-global directories
# NB: If the value of JAVALIBDIR is altered here it must also be altered
#	  in java/javavmwrapper/Makefile.
JAVASHAREDIR?=	${PREFIX}/share/java
JAVAJARDIR?=	${JAVASHAREDIR}/classes
JAVALIBDIR?=	${LOCALBASE}/share/java/classes

# Add appropriate substitutions to PLIST_SUB and LIST_SUB
PLIST_SUB+=		JAVASHAREDIR="${JAVASHAREDIR:S,^${PREFIX}/,,}" \
				JAVAJARDIR="${JAVAJARDIR:S,^${PREFIX}/,,}"
SUB_LIST+=		JAVASHAREDIR="${JAVASHAREDIR}" \
				JAVAJARDIR="${JAVAJARDIR}" \
				JAVALIBDIR="${JAVALIBDIR}"
.		if defined(JAVA_VERSION)
SUB_LIST+=		JAVA_VERSION="${JAVA_VERSION}"
.		endif
.		if defined(JAVA_VENDOR)
SUB_LIST+=		JAVA_VENDOR="${JAVA_VENDOR}"
.		endif
.		if defined(JAVA_OS)
SUB_LIST+=		JAVA_OS="${JAVA_OS}"
.		endif

# The complete list of Java versions, os and vendors supported.
__JAVA_VERSION_LIST=	1.5 1.6 1.7
_JAVA_VERSION_LIST=		${__JAVA_VERSION_LIST} ${__JAVA_VERSION_LIST:S/$/+/}
_JAVA_OS_LIST=			native linux
_JAVA_VENDOR_LIST=		freebsd bsdjava sun openjdk

# Set all meta-information about JDK ports:
# port location, corresponding JAVA_HOME, JDK version, OS, vendor
_JAVA_PORT_NATIVE_OPENJDK_JDK_1_7_INFO=		PORT=java/openjdk7			HOME=${LOCALBASE}/openjdk7 \
											VERSION=1.7.0	OS=native	VENDOR=openjdk
_JAVA_PORT_NATIVE_OPENJDK_JDK_1_6_INFO=		PORT=java/openjdk6			HOME=${LOCALBASE}/openjdk6 \
											VERSION=1.6.0	OS=native	VENDOR=openjdk
_JAVA_PORT_NATIVE_FREEBSD_JDK_1_6_INFO=		PORT=java/diablo-jdk16			HOME=${LOCALBASE}/diablo-jdk1.6.0 \
											VERSION=1.6.0	OS=native	VENDOR=freebsd
_JAVA_PORT_NATIVE_FREEBSD_JDK_1_5_INFO=		PORT=java/diablo-jdk15			HOME=${LOCALBASE}/diablo-jdk1.5.0 \
											VERSION=1.5.0	OS=native	VENDOR=freebsd
_JAVA_PORT_NATIVE_BSDJAVA_JDK_1_5_INFO=		PORT=java/jdk15					HOME=${LOCALBASE}/jdk1.5.0 \
											VERSION=1.5.0	OS=native	VENDOR=bsdjava
_JAVA_PORT_NATIVE_BSDJAVA_JDK_1_6_INFO=		PORT=java/jdk16					HOME=${LOCALBASE}/jdk1.6.0 \
											VERSION=1.6.0	OS=native	VENDOR=bsdjava
_JAVA_PORT_LINUX_SUN_JDK_1_5_INFO=			PORT=java/linux-sun-jdk15		HOME=${LOCALBASE}/linux-sun-jdk1.5.0 \
											VERSION=1.5.0	OS=linux	VENDOR=sun
_JAVA_PORT_LINUX_SUN_JDK_1_6_INFO=			PORT=java/linux-sun-jdk16		HOME=${LOCALBASE}/linux-sun-jdk1.6.0 \
											VERSION=1.6.0	OS=linux	VENDOR=sun

# Verbose description for each VENDOR
_JAVA_VENDOR_freebsd=		"FreeBSD Foundation"
_JAVA_VENDOR_bsdjava=		"BSD Java Porting Team"
_JAVA_VENDOR_openjdk=		"OpenJDK BSD Porting Team"
_JAVA_VENDOR_sun=			Sun

# Verbose description for each OS
_JAVA_OS_native=	Native
_JAVA_OS_linux=		Linux

# Enforce preferred Java ports according to OS
.		if ${OSVERSION} < 800000
_JAVA_PREFERRED_PORTS+=	JAVA_PORT_NATIVE_FREEBSD_JDK_1_6
.		else
_JAVA_PREFERRED_PORTS+=	JAVA_PORT_NATIVE_BSDJAVA_JDK_1_6
.		endif

# List all JDK ports
__JAVA_PORTS_ALL=	JAVA_PORT_NATIVE_FREEBSD_JDK_1_6 \
					JAVA_PORT_NATIVE_FREEBSD_JDK_1_5 \
					JAVA_PORT_NATIVE_OPENJDK_JDK_1_7 \
					JAVA_PORT_NATIVE_OPENJDK_JDK_1_6 \
					JAVA_PORT_NATIVE_BSDJAVA_JDK_1_6 \
					JAVA_PORT_NATIVE_BSDJAVA_JDK_1_5 \
					JAVA_PORT_LINUX_SUN_JDK_1_6 \
					JAVA_PORT_LINUX_SUN_JDK_1_5
_JAVA_PORTS_ALL=	${JAVA_PREFERRED_PORTS} \
					${_JAVA_PREFERRED_PORTS} \
					${__JAVA_PORTS_ALL}

# Set the name of the file that indicates that a JDK is indeed installed, as a
# relative path within the JAVA_HOME directory.
_JDK_FILE=bin/javac

#-------------------------------------------------------------------------------
# Stage 2: Determine which JDK ports are suitable and which JDK ports are
# suitable
#

# From here, the port is using bsd.java.mk v2.0

# Error checking: defined JAVA_{HOME,PORT,PORT_VERSION,PORT_VENDOR,PORT_OS}
.		for variable in JAVA_HOME JAVA_PORT JAVA_PORT_VERSION JAVA_PORT_VENDOR JAVA_PORT_OS
.			if defined(${variable})
check-makevars::
	@${ECHO_CMD} "${PKGNAME}: Environment error: \"${variable}\" should not be defined."
	@${FALSE}
.			endif
.		endfor

# Error checking: JAVA_VERSION
.if !defined(_JAVA_VERSION_LIST_REGEXP)
_JAVA_VERSION_LIST_REGEXP!=		${ECHO_CMD} "${_JAVA_VERSION_LIST}" | ${SED} "s/ /\\\|/g"
.endif
check-makevars::
	@test ! -z "${JAVA_VERSION}" && ( ${ECHO_CMD} "${JAVA_VERSION}" | ${TR} " " "\n" | ${GREP} -q "${_JAVA_VERSION_LIST_REGEXP}" || \
	(${ECHO_CMD} "${PKGNAME}: Makefile error: \"${JAVA_VERSION}\" is not a valid value for JAVA_VERSION. It should be one or more of: ${__JAVA_VERSION_LIST} (with an optional \"+\" suffix.)"; ${FALSE})) || true

# Error checking: JAVA_VENDOR
.if !defined(_JAVA_VENDOR_LIST_REGEXP)
_JAVA_VENDOR_LIST_REGEXP!=		${ECHO_CMD} "${_JAVA_VENDOR_LIST}" | ${SED} "s/ /\\\|/g"
.endif
check-makevars::
	@test ! -z "${JAVA_VENDOR}" && ( ${ECHO_CMD} "${JAVA_VENDOR}" | ${TR} " " "\n" | ${GREP} -q "${_JAVA_VENDOR_LIST_REGEXP}" || \
	(${ECHO_CMD} "${PKGNAME}: Makefile error: \"${JAVA_VENDOR}\" is not a valid value for JAVA_VENDOR. It should be one or more of: ${_JAVA_VENDOR_LIST}"; \
	${FALSE})) || true

# Error checking: JAVA_OS
.if !defined(_JAVA_OS_LIST_REGEXP)
_JAVA_OS_LIST_REGEXP!=		${ECHO_CMD} "${_JAVA_OS_LIST}" | ${SED} "s/ /\\\|/g"
.endif
check-makevars::
	@test ! -z "${JAVA_OS}" && ( ${ECHO_CMD} "${JAVA_OS}" | ${TR} " " "\n" | ${GREP} -q "${_JAVA_OS_LIST_REGEXP}" || \
	(${ECHO_CMD} "${PKGNAME}: Makefile error: \"${JAVA_OS}\" is not a valid value for JAVA_OS. It should be one or more of: ${_JAVA_OS_LIST}"; \
	${FALSE})) || true

# Set default values for JAVA_BUILD and JAVA_RUN
# When nothing is set, assume JAVA_BUILD=jdk and JAVA_RUN=jre
# (unless NO_BUILD is set)
.		if !defined(JAVA_EXTRACT) && !defined(JAVA_BUILD) && !defined(JAVA_RUN)
.			if !defined(NO_BUILD)
JAVA_BUILD=	jdk
.			endif
JAVA_RUN=	jre
.		endif

# JDK dependency setting
.		undef _JAVA_PORTS_INSTALLED
.		undef _JAVA_PORTS_POSSIBLE
.		if defined(JAVA_VERSION)
_JAVA_VERSION=	${JAVA_VERSION:S/1.5+/1.5 1.6+/:S/1.6+/1.6 1.7+/:S/1.7+/1.7/}
.		else
_JAVA_VERSION=	${__JAVA_VERSION_LIST}
.		endif
.		if defined(JAVA_OS)
_JAVA_OS=	${JAVA_OS}
.		else
_JAVA_OS=	${_JAVA_OS_LIST}
.		endif
.		if defined(JAVA_VENDOR)
_JAVA_VENDOR=	${JAVA_VENDOR}
.		else
_JAVA_VENDOR=	${_JAVA_VENDOR_LIST}
.		endif

.		for A_JAVA_PORT in ${_JAVA_PORTS_ALL}
A_JAVA_PORT_INFO:=			${A_JAVA_PORT:S/^/\${_/:S/$/_INFO}/}
A_JAVA_PORT_HOME=			${A_JAVA_PORT_INFO:MHOME=*:S,HOME=,,}
A_JAVA_PORT_VERSION=		${A_JAVA_PORT_INFO:MVERSION=*:C/VERSION=([0-9])\.([0-9])(.*)/\1.\2/}
A_JAVA_PORT_OS=				${A_JAVA_PORT_INFO:MOS=*:S,OS=,,}
A_JAVA_PORT_VENDOR=			${A_JAVA_PORT_INFO:MVENDOR=*:S,VENDOR=,,}
.if !defined(_JAVA_PORTS_INSTALLED)
A_JAVA_PORT_INSTALLED!=		${TEST} -x "${A_JAVA_PORT_HOME}/${_JDK_FILE}" \
							&& ${ECHO_CMD} "${A_JAVA_PORT}" \
							|| ${TRUE}
__JAVA_PORTS_INSTALLED!=	${ECHO_CMD} "${__JAVA_PORTS_INSTALLED} ${A_JAVA_PORT_INSTALLED}"
.endif

# The magic here is that we want to test for a substring using only shell builtins (to avoid forking)
# Our shell does not have an explicit substring operator, but we can build one by using the '#'
# deletion operator ('%' would also work).  We try to delete the pattern "*${substr}*" and compare it
# to the original string.  If they differ, the substring matched.
# 
# We can't do this in make because it doesn't allow nested modifiers ${foo:${bar}}
#
A_JAVA_PORT_POSSIBLE!=		ver="${_JAVA_VERSION}"; os="${_JAVA_OS}"; vendor="${_JAVA_VENDOR}"; \
				${TEST} "$${ver\#*${A_JAVA_PORT_VERSION}*}" != "${_JAVA_VERSION}" -a \
				"$${os\#*${A_JAVA_PORT_OS}*}" != "${_JAVA_OS}" -a \
				"$${vendor\#*${A_JAVA_PORT_VENDOR}*}" != "${_JAVA_VENDOR}" && \
				${ECHO_CMD} "${A_JAVA_PORT}" || ${TRUE}
__JAVA_PORTS_POSSIBLE:=		${__JAVA_PORTS_POSSIBLE} ${A_JAVA_PORT_POSSIBLE}
.		endfor
.if !defined(_JAVA_PORTS_INSTALLED)
_JAVA_PORTS_INSTALLED=		${__JAVA_PORTS_INSTALLED:C/ [ ]+/ /g}
.endif
_JAVA_PORTS_POSSIBLE=		${__JAVA_PORTS_POSSIBLE:C/ [ ]+/ /g}


#-------------------------------------------------------------------------------
# Stage 3: Decide the exact JDK to use (or install)
#

# Find an installed JDK port that matches the requirements of the port

.		undef _JAVA_PORTS_INSTALLED_POSSIBLE

.		for A_JAVA_PORT in ${_JAVA_PORTS_POSSIBLE}
A_JAVA_PORT_INSTALLED_POSSIBLE!=	inst="${_JAVA_PORTS_INSTALLED}"; \
					${TEST} "$${inst\#*${A_JAVA_PORT}*}" != "${_JAVA_PORTS_INSTALLED}" && \
					${ECHO_CMD} "${A_JAVA_PORT}" || ${TRUE}
__JAVA_PORTS_INSTALLED_POSSIBLE:=	${__JAVA_PORTS_INSTALLED_POSSIBLE} ${A_JAVA_PORT_INSTALLED_POSSIBLE}
.		endfor
_JAVA_PORTS_INSTALLED_POSSIBLE=		${__JAVA_PORTS_INSTALLED_POSSIBLE:C/[ ]+//g}

.		if ${_JAVA_PORTS_INSTALLED_POSSIBLE} != ""
.                 for i in ${_JAVA_PORTS_INSTALLED_POSSIBLE}
.                   if !defined(_JAVA_PORTS_INSTALLED_POSSIBLE_shortcircuit)
_JAVA_PORT=	$i
_JAVA_PORTS_INSTALLED_POSSIBLE_shortcircuit=	1
.                   endif
.                 endfor
# If no installed JDK port fits, then pick one from the list of possible ones
.		else
.                 for i in ${_JAVA_PORTS_POSSIBLE}
.                   if !defined(_JAVA_PORTS_POSSIBLE_shortcircuit)
_JAVA_PORT=	$i
_JAVA_PORTS_POSSIBLE_shortcircuit=	1
.                   endif
.                 endfor
.		endif

_JAVA_PORT_INFO:=		${_JAVA_PORT:S/^/\${_/:S/$/_INFO}/}
JAVA_PORT=				${_JAVA_PORT_INFO:MPORT=*:S,PORT=,,}
JAVA_HOME=				${_JAVA_PORT_INFO:MHOME=*:S,HOME=,,}
JAVA_PORT_VERSION=		${_JAVA_PORT_INFO:MVERSION=*:S,VERSION=,,}
JAVA_PORT_OS=			${_JAVA_PORT_INFO:MOS=*:S,OS=,,}
JAVA_PORT_VENDOR=		${_JAVA_PORT_INFO:MVENDOR=*:S,VENDOR=,,}

JAVA_PORT_VENDOR_DESCRIPTION:=	${JAVA_PORT_VENDOR:S/^/\${_JAVA_VENDOR_/:S/$/}/}
JAVA_PORT_OS_DESCRIPTION:=		${JAVA_PORT_OS:S/^/\${_JAVA_OS_/:S/$/}/}

#-------------------------------------------------------------------------------
# Stage 4: Add any dependencies if necessary
#

# Ant Support: USE_ANT --> JAVA_BUILD=jdk
.		if defined(USE_ANT)
JAVA_BUILD=		jdk
.		endif

# Add the JDK port to the dependencies
DEPEND_JAVA=	${JAVA}:${PORTSDIR}/${JAVA_PORT}
.		if defined(JAVA_EXTRACT)
EXTRACT_DEPENDS+=	${DEPEND_JAVA}
.		endif
.		if defined(JAVA_BUILD)
.			if defined(NO_BUILD)
check-makevars::
	@${ECHO_CMD} "${PKGNAME}: Makefile error: JAVA_BUILD and NO_BUILD cannot be set at the same time.";
	@${FALSE}
.			endif
BUILD_DEPENDS+=		${DEPEND_JAVA}
.		endif
.		if defined(JAVA_RUN)
RUN_DEPENDS+=		${DEPEND_JAVA}
.		endif

# Ant support: default do-build target
.		if defined(USE_ANT)
ANT?=				${LOCALBASE}/bin/ant
MAKE_ENV+=			JAVA_HOME=${JAVA_HOME}
BUILD_DEPENDS+=		${ANT}:${PORTSDIR}/devel/apache-ant
ALL_TARGET?=
.			if !target(do-build)
do-build:
					@(cd ${BUILD_WRKSRC}; \
						${SETENV} ${MAKE_ENV} ${ANT} ${MAKE_ARGS} ${ALL_TARGET})
.			endif
.		endif

#-----------------------------------------------------------------------------
# Stage 5: Define all settings for the port to use
#
# At this stage both JAVA_HOME and JAVA_PORT are definitely given a value.
#
# Define the location of the Java compiler.

# Only define JAVAC if a JDK is needed
.		undef JAVAC

# Then test if a JAVAC has to be set (JAVA_BUILD==jdk)
.		if defined(JAVA_BUILD)
.			if (${JAVA_BUILD:U} == "JDK") && !defined(JAVAC)
JAVAC?=			${JAVA_HOME}/bin/javac
.			endif
.		endif

# Define the location of some more executables.
APPLETVIEWER?=	${JAVA_HOME}/bin/appletviewer
JAR?=			${JAVA_HOME}/bin/jar
JAVA?=			${JAVA_HOME}/bin/java
JAVADOC?=		${JAVA_HOME}/bin/javadoc
JAVAH?=			${JAVA_HOME}/bin/javah
JAVAP?=			${JAVA_HOME}/bin/javap
JAVA_N2A?=		${JAVA_HOME}/bin/native2ascii
JAVA_SERIALVER?=${JAVA_HOME}/bin/serialver
RMIC?=			${JAVA_HOME}/bin/rmic
RMIREGISTRY?=	${JAVA_HOME}/bin/rmiregistry
JAVA_KEYTOOL?=		${JAVA_HOME}/bin/keytool
JAVA_POLICYTOOL?=	${JAVA_HOME}/bin/policytool
RMID?=				${JAVA_HOME}/bin/rmid

# Set the location of the ZIP or JAR file with all standard Java classes.
JAVA_CLASSES=	${JAVA_HOME}/jre/lib/rt.jar


#-------------------------------------------------------------------------------
# Additional Java support

# Debug target
# Use it to check Java dependency while porting
java-debug:
	@${ECHO_CMD} "# User specified parameters:"
	@${ECHO_CMD} "JAVA_VERSION=                   ${JAVA_VERSION}	(${_JAVA_VERSION})"
	@${ECHO_CMD} "JAVA_OS=                        ${JAVA_OS}	(${_JAVA_OS})"
	@${ECHO_CMD} "JAVA_VENDOR=                    ${JAVA_VENDOR}	(${_JAVA_VENDOR})"
	@${ECHO_CMD} "JAVA_BUILD=                     ${JAVA_BUILD}"
	@${ECHO_CMD} "JAVA_RUN=                       ${JAVA_RUN}"
	@${ECHO_CMD} "JAVA_EXTRACT=                   ${JAVA_EXTRACT}"
	@${ECHO_CMD}
	@${ECHO_CMD} "# JDK port dependency selection process:"
	@${ECHO_CMD} "_JAVA_PORTS_POSSIBLE=           ${_JAVA_PORTS_POSSIBLE}"
	@${ECHO_CMD} "_JAVA_PORTS_INSTALLED=          ${_JAVA_PORTS_INSTALLED}"
	@${ECHO_CMD} "_JAVA_PORTS_INSTALLED_POSSIBLE= ${_JAVA_PORTS_INSTALLED_POSSIBLE}"
	@${ECHO_CMD} "_JAVA_PORT=                     ${_JAVA_PORT}"
	@${ECHO_CMD} "_JAVA_PORT_INFO=                ${_JAVA_PORT_INFO:S/\t/ /}"
	@${ECHO_CMD}
	@${ECHO_CMD} "# Selected JDK port:"
	@${ECHO_CMD} "JAVA_PORT=                      ${JAVA_PORT}"
	@${ECHO_CMD} "JAVA_HOME=                      ${JAVA_HOME}"
	@${ECHO_CMD} "JAVA_PORT_VERSION=              ${JAVA_PORT_VERSION}"
	@${ECHO_CMD} "JAVA_PORT_OS=                   ${JAVA_PORT_OS}	(${JAVA_PORT_OS_DESCRIPTION})"
	@${ECHO_CMD} "JAVA_PORT_VENDOR=               ${JAVA_PORT_VENDOR}	(${JAVA_PORT_VENDOR_DESCRIPTION})"
	@${ECHO_CMD}
	@${ECHO_CMD} "# Additional variables:"
	@${ECHO_CMD} "JAVAC=                          ${JAVAC}"
	@${ECHO_CMD} "JAVA_CLASSES=                   ${JAVA_CLASSES}"

.	endif
.endif
