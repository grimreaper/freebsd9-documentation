#!/usr/bin/perl -np
# Copyright (c) Juli 1998 Wolfram Schneider <wosch@FreeBSD.org>. Berlin.
#
# clickable - Make URL clickable
#
# $FreeBSD: www/es/news/clickable.pl,v 1.2 1999/09/06 07:03:03 peter Exp $

s/</&lt;/g;
s%((http|ftp)://[^\s"\)\>,;]+)%<A HREF="$1">$1</A>%gi;
