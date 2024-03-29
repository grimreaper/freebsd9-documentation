#
# bsd.php.mk - Support for PHP-based ports.
#
# Created by: Alex Dupre <ale@FreeBSD.org>
#
# For FreeBSD committers:
# Please send all suggested changes to the maintainer instead of committing
# them to CVS yourself.
#
# $FreeBSD: ports/Mk/bsd.php.mk,v 1.65 2011/07/05 11:59:45 sunpoet Exp $
#
# Adding 'USE_PHP=yes' to a port includes this Makefile after bsd.ports.pre.mk.
# If the port requires a predefined set of PHP extensions, they can be
# listed in this way:
#
# USE_PHP=	ext1 ext2 ext3
#
# The port can set these options in its Makefile before bsd.ports.pre.mk:
#
# DEFAULT_PHP_VER=N - Use PHP version N if PHP is not yet installed.
# IGNORE_WITH_PHP=N - The port doesn't work with PHP version N.
# USE_PHPIZE=yes    - Use to build a PHP extension.
# USE_PHPEXT=yes    - Use to build, install and register a PHP extension.
# USE_PHP_BUILD=yes - Set PHP also as a build dependency.
# WANT_PHP_CLI=yes  - Want the CLI version of PHP.
# WANT_PHP_CGI=yes  - Want the CGI version of PHP.
# WANT_PHP_MOD=yes  - Want the Apache Module for PHP.
# WANT_PHP_WEB=yes  - Want the Apache Module or the CGI version of PHP.
#
# You may combine multiple WANT_PHP_* knobs.
# Don't specify any WANT_PHP_* knob if your port will work with every PHP SAPI.
#

.if !defined(_PHPMKINCLUDED)

PHP_Include_MAINTAINER=	ale@FreeBSD.org

_PHPMKINCLUDED=	yes

PHPBASE?=	${LOCALBASE}
.if exists(${PHPBASE}/etc/php.conf)
.include "${PHPBASE}/etc/php.conf"
PHP_EXT_DIR!=	${PHPBASE}/bin/php-config --extension-dir | ${SED} -ne 's,^${PHPBASE}/lib/php/\(.*\),\1,p'
# The following block should be eventually removed from here or php5 port
.if ${PHP_VER} == 5
PHP_EXT_INC=	pcre spl
.endif

.else
DEFAULT_PHP_VER?=	5

PHP_VER?=	${DEFAULT_PHP_VER}
.if ${PHP_VER} == 4
PHP_EXT_DIR=	20020429
.elif ${PHP_VER}  == 52
PHP_EXT_DIR=	20060613
.else
PHP_EXT_DIR=	20090626
PHP_EXT_INC=	pcre spl
.endif

HTTPD?=		${LOCALBASE}/sbin/httpd
.if exists(${HTTPD})
APACHE_VERSION!=	${HTTPD} -V | ${SED} -ne 's/^Server version: Apache\/\([0-9]\)\.\([0-9]*\).*/\1\2/p'
.	if ${APACHE_VERSION} > 13
APXS?=		${LOCALBASE}/sbin/apxs
APACHE_MPM!=	${APXS} -q MPM_NAME
.		if ${APACHE_MPM} == "worker"
PHP_EXT_DIR:=	${PHP_EXT_DIR}-zts
.		endif
.	endif
.elif defined(APACHE_PORT)
APACHE_VERSION!=	${ECHO_CMD} ${APACHE_PORT} | ${SED} -ne 's,.*/apache\([0-9]*\).*,\1,p'
.	if ${APACHE_VERSION} > 13 && defined(WITH_MPM) && ${WITH_MPM} == "worker"
PHP_EXT_DIR:=	${PHP_EXT_DIR}-zts
.	endif
.endif

.if defined(WITH_DEBUG)
PHP_EXT_DIR:=	${PHP_EXT_DIR}-debug
.endif
PHP_SAPI?=	""
.endif	# .if exists(${PHPBASE}/etc/php.conf)
PHP_EXT_INC?=	""

.if defined(IGNORE_WITH_PHP)
.	for VER in ${IGNORE_WITH_PHP}
.		if ${PHP_VER} == "${VER}"
IGNORE=		cannot install: doesn't work with PHP version : ${PHP_VER} (Doesn't support PHP ${IGNORE_WITH_PHP})
.		endif
.	endfor
.endif

.if defined(WANT_PHP_WEB)
.	if defined(WANT_PHP_CGI) || defined(WANT_PHP_MOD)
check-makevars::
		@${ECHO_CMD} "If you define WANT_PHP_WEB you cannot set also WANT_PHP_CGI"
		@${ECHO_CMD} "or WANT_PHP_MOD. Use only one of them."
		@${FALSE}
.	else
.	if defined(PHP_VERSION) && ${PHP_SAPI:Mcgi} == "" && ${PHP_SAPI:Mfpm} == "" && ${PHP_SAPI:Mmod} == ""
check-makevars::
		@${ECHO_CMD} "This port requires the Apache Module or the CGI version of PHP, but you have"
		@${ECHO_CMD} "already installed a PHP port without them."
		@${FALSE}
.	endif
.	endif
.else

.if defined(WANT_PHP_CGI)
.	if defined(PHP_VERSION) && ${PHP_SAPI:Mcgi} == "" && ${PHP_SAPI:Mfpm} == ""
check-makevars::
		@${ECHO_CMD} "This port requires the CGI version of PHP, but you have already"
		@${ECHO_CMD} "installed a PHP port without CGI."
		@${FALSE}
.	endif
.else

.if defined(WANT_PHP_CLI)
.	if defined(PHP_VERSION) && ${PHP_SAPI:Mcli} == ""
check-makevars::
		@${ECHO_CMD} "This port requires the CLI version of PHP, but you have already"
		@${ECHO_CMD} "installed a PHP port without CLI."
		@${FALSE}
.	endif
.else

.if defined(WANT_PHP_MOD)
.	if defined(PHP_VERSION) && ${PHP_SAPI:Mmod} == ""
check-makevars::
		@${ECHO_CMD} "This port requires the Apache Module for PHP, but you have already"
		@${ECHO_CMD} "installed a PHP port without the Apache Module."
		@${FALSE}
.	endif
.endif

.endif

.endif

.endif

PHP_PORT?=	lang/php${PHP_VER}

.if defined(USE_PHP_BUILD)
BUILD_DEPENDS+=	${PHPBASE}/include/php/main/php.h:${PORTSDIR}/${PHP_PORT}
.endif
RUN_DEPENDS+=	${PHPBASE}/include/php/main/php.h:${PORTSDIR}/${PHP_PORT}

PLIST_SUB+=	PHP_EXT_DIR=${PHP_EXT_DIR}
SUB_LIST+=	PHP_EXT_DIR=${PHP_EXT_DIR}

.if defined(USE_PHPIZE) || defined(USE_PHPEXT)
BUILD_DEPENDS+=	${PHPBASE}/bin/phpize:${PORTSDIR}/${PHP_PORT}
GNU_CONFIGURE=	yes
USE_AUTOTOOLS+=	autoconf:env
CONFIGURE_ARGS+=--with-php-config=${PHPBASE}/bin/php-config

configure-message: phpize-message do-phpize

phpize-message:
	@${ECHO_MSG} "===>  PHPizing for ${PKGNAME}"

do-phpize:
	@(cd ${WRKSRC}; ${SETENV} ${SCRIPTS_ENV} ${PHPBASE}/bin/phpize)
.endif

.endif

.if defined(_POSTMKINCLUDED) && defined(USE_PHPEXT)
PHP_MODNAME?=	${PORTNAME}
PHP_HEADER_DIRS?=	""

do-install:
	@${MKDIR} ${PREFIX}/lib/php/${PHP_EXT_DIR}
	@${INSTALL_DATA} ${WRKSRC}/modules/${PHP_MODNAME}.so \
		${PREFIX}/lib/php/${PHP_EXT_DIR}
.	for header in . ${PHP_HEADER_DIRS}
		@${MKDIR} ${PREFIX}/include/php/ext/${PHP_MODNAME}/${header}
		@${INSTALL_DATA} ${WRKSRC}/${header}/*.h \
			${PREFIX}/include/php/ext/${PHP_MODNAME}/${header}
.	endfor
	@${RM} -f ${PREFIX}/include/php/ext/${PHP_MODNAME}/config.h
	@${GREP} "#define \(COMPILE\|HAVE\|USE\)_" ${WRKSRC}/config.h \
		> ${PREFIX}/include/php/ext/${PHP_MODNAME}/config.h
	@${ECHO_CMD} \#include \"ext/${PHP_MODNAME}/config.h\" \
		>> ${PREFIX}/include/php/ext/php_config.h
	@${MKDIR} ${PREFIX}/etc/php
	@${ECHO_CMD} extension=${PHP_MODNAME}.so \
		>> ${PREFIX}/etc/php/extensions.ini

add-plist-info: add-plist-phpext
add-plist-phpext:
	@${ECHO_CMD} "lib/php/${PHP_EXT_DIR}/${PHP_MODNAME}.so" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/lib/php/${PHP_EXT_DIR} 2> /dev/null || true" \
		>> ${TMPPLIST}
	@${FIND} -P ${PREFIX}/include/php/ext/${PHP_MODNAME} ! -type d 2>/dev/null | \
		${SED} -ne 's,^${PREFIX}/,,p' >> ${TMPPLIST}
	@${FIND} -P -d ${PREFIX}/include/php/ext/${PHP_MODNAME} -type d 2>/dev/null | \
		${SED} -ne 's,^${PREFIX}/,@dirrm ,p' >> ${TMPPLIST}
	@${ECHO_CMD} "@exec echo \#include \\\"ext/${PHP_MODNAME}/config.h\\\" >> %D/include/php/ext/php_config.h" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec cp %D/include/php/ext/php_config.h %D/include/php/ext/php_config.h.orig" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec grep -v ext/${PHP_MODNAME}/config.h %D/include/php/ext/php_config.h.orig > %D/include/php/ext/php_config.h || true" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rm %D/include/php/ext/php_config.h.orig" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@exec mkdir -p %D/etc/php" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@exec echo extension=${PHP_MODNAME}.so >> %D/etc/php/extensions.ini" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec cp %D/etc/php/extensions.ini %D/etc/php/extensions.ini.orig" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec grep -v extension=${PHP_MODNAME}\\\.so %D/etc/php/extensions.ini.orig > %D/etc/php/extensions.ini || true" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rm %D/etc/php/extensions.ini.orig" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec [ -s %D/etc/php/extensions.ini ] || rm %D/etc/php/extensions.ini" \
		>> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/etc/php 2> /dev/null || true" \
		>> ${TMPPLIST}

security-check: php-ini

php-ini:
	@${ECHO_CMD} "****************************************************************************"
	@${ECHO_CMD} ""
	@${ECHO_CMD} "The following line has been added to your ${PREFIX}/etc/php/extensions.ini"
	@${ECHO_CMD} "configuration file to automatically load the installed extension:"
	@${ECHO_CMD} ""
	@${ECHO_CMD} "extension=${PHP_MODNAME}.so"
	@${ECHO_CMD} ""
	@${ECHO_CMD} "****************************************************************************"
.endif

# Extensions
.if defined(_POSTMKINCLUDED) && ${USE_PHP:L} != "yes"
# non-version specific components
_USE_PHP_ALL=	apc bcmath bitset bz2 calendar ctype curl dba \
		exif fileinfo fribidi ftp gd gettext gmp \
		hash iconv imap interbase intl json ldap mbstring mcrypt \
		memcache mssql mysql odbc \
		openssl pcntl pcre pdf pgsql posix \
		pspell radius readline recode session shmop snmp \
		sockets sybase_ct sysvmsg sysvsem sysvshm \
		tokenizer wddx xml xmlrpc yaz zip zlib
# version specific components
_USE_PHP_VER4=	${_USE_PHP_ALL} crack dbase dbx dio domxml filepro mcal mcve \
		mhash ncurses oracle overload pfpro xslt yp
_USE_PHP_VER5=	${_USE_PHP_ALL} dom filter mysqli pdo \
		pdo_mysql pdo_pgsql pdo_sqlite \
		simplexml soap spl sqlite sqlite3 tidy xmlreader xmlwriter xsl
_USE_PHP_VER52=	${_USE_PHP_ALL} dbase ncurses dom filter ming mysqli oci8 \
		pdo pdo_mysql pdo_sqlite simplexml soap spl sqlite tidy \
		xmlreader xmlwriter xsl mhash

apc_DEPENDS=	www/pecl-APC
bcmath_DEPENDS=	math/php${PHP_VER}-bcmath
bitset_DEPENDS=	math/pecl-bitset
bz2_DEPENDS=	archivers/php${PHP_VER}-bz2
calendar_DEPENDS=	misc/php${PHP_VER}-calendar
crack_DEPENDS=	security/php${PHP_VER}-crack
ctype_DEPENDS=	textproc/php${PHP_VER}-ctype
curl_DEPENDS=	ftp/php${PHP_VER}-curl
dba_DEPENDS=	databases/php${PHP_VER}-dba
dbase_DEPENDS=	databases/php${PHP_VER}-dbase
dbx_DEPENDS=	databases/php${PHP_VER}-dbx
dio_DEPENDS=	devel/php${PHP_VER}-dio
dom_DEPENDS=	textproc/php${PHP_VER}-dom
domxml_DEPENDS=	textproc/php${PHP_VER}-domxml
exif_DEPENDS=	graphics/php${PHP_VER}-exif
filepro_DEPENDS=databases/php${PHP_VER}-filepro
filter_DEPENDS=	security/php${PHP_VER}-filter
fribidi_DEPENDS=converters/pecl-fribidi
ftp_DEPENDS=	ftp/php${PHP_VER}-ftp
gd_DEPENDS=	graphics/php${PHP_VER}-gd
gettext_DEPENDS=devel/php${PHP_VER}-gettext
gmp_DEPENDS=	math/php${PHP_VER}-gmp
iconv_DEPENDS=	converters/php${PHP_VER}-iconv
imap_DEPENDS=	mail/php${PHP_VER}-imap
interbase_DEPENDS=	databases/php${PHP_VER}-interbase
intl_DEPENDS=	devel/pecl-intl
ldap_DEPENDS=	net/php${PHP_VER}-ldap
mbstring_DEPENDS=	converters/php${PHP_VER}-mbstring
mcal_DEPENDS=	misc/php${PHP_VER}-mcal
mcrypt_DEPENDS=	security/php${PHP_VER}-mcrypt
mcve_DEPENDS=	devel/php${PHP_VER}-mcve
memcache_DEPENDS=	databases/pecl-memcache
mhash_DEPENDS=	security/php${PHP_VER}-mhash
mssql_DEPENDS=	databases/php${PHP_VER}-mssql
mysql_DEPENDS=	databases/php${PHP_VER}-mysql
mysqli_DEPENDS=	databases/php${PHP_VER}-mysqli
ncurses_DEPENDS=devel/php${PHP_VER}-ncurses
odbc_DEPENDS=	databases/php${PHP_VER}-odbc
oci8_DEPENDS=	databases/php${PHP_VER}-oci8
openssl_DEPENDS=security/php${PHP_VER}-openssl
oracle_DEPENDS=	databases/php${PHP_VER}-oracle
overload_DEPENDS=lang/php${PHP_VER}-overload
pcntl_DEPENDS=	devel/php${PHP_VER}-pcntl
pcre_DEPENDS=	devel/php${PHP_VER}-pcre
pdf_DEPENDS=	print/pecl-pdflib
pdo_DEPENDS=	databases/php${PHP_VER}-pdo
pdo_mysql_DEPENDS=	databases/php${PHP_VER}-pdo_mysql
pdo_pgsql_DEPENDS=	databases/php${PHP_VER}-pdo_pgsql
pdo_sqlite_DEPENDS=	databases/php${PHP_VER}-pdo_sqlite
pfpro_DEPENDS=	finance/php${PHP_VER}-pfpro
pgsql_DEPENDS=	databases/php${PHP_VER}-pgsql
posix_DEPENDS=	sysutils/php${PHP_VER}-posix
pspell_DEPENDS=	textproc/php${PHP_VER}-pspell
radius_DEPENDS=	net/pecl-radius
readline_DEPENDS=	devel/php${PHP_VER}-readline
recode_DEPENDS=	converters/php${PHP_VER}-recode
session_DEPENDS=www/php${PHP_VER}-session
shmop_DEPENDS=	devel/php${PHP_VER}-shmop
simplexml_DEPENDS=	textproc/php${PHP_VER}-simplexml
snmp_DEPENDS=	net-mgmt/php${PHP_VER}-snmp
soap_DEPENDS=	net/php${PHP_VER}-soap
sockets_DEPENDS=net/php${PHP_VER}-sockets
spl_DEPENDS=	devel/php${PHP_VER}-spl
sqlite_DEPENDS=	databases/php${PHP_VER}-sqlite
sqlite3_DEPENDS=databases/php${PHP_VER}-sqlite3
sybase_ct_DEPENDS=	databases/php${PHP_VER}-sybase_ct
sysvmsg_DEPENDS=devel/php${PHP_VER}-sysvmsg
sysvsem_DEPENDS=devel/php${PHP_VER}-sysvsem
sysvshm_DEPENDS=devel/php${PHP_VER}-sysvshm
tidy_DEPENDS=	www/php${PHP_VER}-tidy
tokenizer_DEPENDS=	devel/php${PHP_VER}-tokenizer
wddx_DEPENDS=	textproc/php${PHP_VER}-wddx
xml_DEPENDS=	textproc/php${PHP_VER}-xml
xmlreader_DEPENDS=	textproc/php${PHP_VER}-xmlreader
xmlrpc_DEPENDS=	net/php${PHP_VER}-xmlrpc
xmlwriter_DEPENDS=	textproc/php${PHP_VER}-xmlwriter
xsl_DEPENDS=	textproc/php${PHP_VER}-xsl
xslt_DEPENDS=	textproc/php${PHP_VER}-xslt
yaz_DEPENDS=	net/pecl-yaz
yp_DEPENDS=	net/php${PHP_VER}-yp
zlib_DEPENDS=	archivers/php${PHP_VER}-zlib
.if ${PHP_VER} == 4
fileinfo_DEPENDS=	sysutils/pecl-fileinfo
hash_DEPENDS=	security/pecl-hash
json_DEPENDS=	devel/pecl-json
zip_DEPENDS=	archivers/pecl-zip
.else
.if ${PHP_VER} == 52
fileinfo_DEPENDS=	sysutils/pecl-fileinfo
.else
fileinfo_DEPENDS=	sysutils/php${PHP_VER}-fileinfo
.endif
hash_DEPENDS=	security/php${PHP_VER}-hash
json_DEPENDS=	devel/php${PHP_VER}-json
zip_DEPENDS=	archivers/php${PHP_VER}-zip
.endif

.	for extension in ${USE_PHP}
.		if ${_USE_PHP_VER${PHP_VER}:M${extension}} != ""
.			if ${PHP_EXT_INC:M${extension}} == ""
.				if defined(USE_PHP_BUILD)
BUILD_DEPENDS+=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/${extension}.so:${PORTSDIR}/${${extension}_DEPENDS}
.				endif
RUN_DEPENDS+=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/${extension}.so:${PORTSDIR}/${${extension}_DEPENDS}
.			endif
.		else
ext=		${extension}
.			if ${ext} == "mhash" && ${PHP_VER} == 5
.				if defined(USE_PHP_BUILD)
BUILD_DEPENDS+=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/hash.so:${PORTSDIR}/${hash_DEPENDS}
.				endif
RUN_DEPENDS+=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/hash.so:${PORTSDIR}/${hash_DEPENDS}
.			elif ${ext:L} != "yes"
check-makevars::
			@${ECHO_CMD} "Unknown extension ${extension} for PHP ${PHP_VER}."
			@${FALSE}
.			endif
.		endif
.	endfor
.endif
