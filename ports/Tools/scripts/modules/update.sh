#!/bin/sh

cd /g/hubgnats/gnats-aa/modules

make clean
make

diff=`diff modules-ports modules | wc | awk '{ print $1 }'`

echo Difference is $diff lines.

if [ $diff -gt 50 ]; then
	date | mail -s "DIFF > $diff" edwin@FreeBSD.org
	exit
fi

# Don't commit anything if only the $FreeBSD: ports/Tools/scripts/modules/update.sh,v 1.2 2008/07/14 03:56:23 edwin Exp $ tag has changed
if [ $diff -ne 4 ]; then
	make commit
fi
