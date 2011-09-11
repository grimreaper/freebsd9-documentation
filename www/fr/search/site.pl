#!/usr/bin/perl
# Copyright (c) June 1998 Wolfram Schneider <wosch@FreeBSD.org>, Berlin.
#
# site - create automatically a site map
#
# Format: <url> | <description>
# An empty url begin a new section
#
# $FreeBSD: www/fr/search/site.pl,v 1.1 2003/12/10 17:13:32 stephane Exp $

# The FreeBSD French Documentation Project
# Original revision: 1.3

# print a dl list
# <dl><dt>foo</dt>
#     <dd>bla,foo,bar</dd>
# </dl> 

sub dl {
    $menu = 0;
    print "<DL>\n";

    while(<>) {
	# ignore comments and empty lines
	next if /^\s*#/;
	next if /^\s*$/;
	
	chop;
	($url, $description) = split('\|');
	$description =~ s/^\s+//;
	$description =~ s/\s+$//;
	
	# new section
	if (!$url && $description) {
	    # close last <dd>
	    if ($menu) {
		print "\n", "  </DD>\n", "\n";
	    }

	    $menu = 1;
	    print " <DT><STRONG>", $description, "</STRONG></DT>\n";
	    print "  <DD>\n";
	} 

	# entries for a section
	elsif ($menu) {
	    # a comma execpt for the last entry
	    print ",\n" if ($menu > 1);

	    print "   <A HREF=", '"', $url, '">', $description, "</A>";
	    $menu++;
	}
    }

    print "\n", "  </DD>\n";
    print "</DL>\n";
}

&dl;
