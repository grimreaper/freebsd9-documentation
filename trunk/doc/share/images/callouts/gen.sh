#!/bin/sh

# $FreeBSD: doc/share/images/callouts/gen.sh,v 1.3 2011/09/06 01:21:48 dougb Exp $

# For more than 30 adjust %callout-graphics-number-limit%
# in doc/share/sgml/freebsd-html.dsl

for i in `jot 9 1`
do
    convert -size 101x101 xc:green -transparent green -fill black -draw 'circle 50,50 50' -fill white -stroke none -pointsize 90 -gravity center -kerning -5 -font Helvetica-bold -draw "text 0,5 \"$i\"" -scale '12x12' $i.png
done

for i in `jot 21 10`
do
    convert -size 101x101 xc:green -transparent green -fill black -draw 'circle 50,50 50' -fill white -stroke none -pointsize 80 -gravity center -kerning -5 -font Helvetica-bold -draw "text 0,5 \"$i\"" -scale '12x12' $i.png
done

exit 0
