<!-- 
	The FreeBSD Documentation Project
	The FreeBSD French Documentation Project

	$FreeBSD: doc/fr_FR.ISO8859-1/books/porters-handbook/freebsd.dsl,v 1.1 2004/05/24 20:15:04 gioria Exp $
	Original Revision: 1.5
-->

<!-- Local DSSSL file for the Porter's Handbook.  This is so we can include
     a link to the -ports mailing list at the bottom of the HTML files, 
     rather than the -questions mailing list. -->

<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY freebsd.dsl SYSTEM "../../share/sgml/freebsd.dsl" CDATA DSSSL>
<!ENTITY % output.html  "IGNORE"> 
]>

<style-sheet>
  <style-specification use="docbook">
    <style-specification-body>
 
      <![ %output.html; [ 
	(define ($email-footer$)
          (make sequence
            (literal "Pour toutes questions sur le systeme des ports, e-mail <")
            (create-link (list (list "HREF" "mailto:ports@FreeBSD.org"))
              (literal "ports@FreeBSD.org"))
            (literal ">.")
            (make empty-element gi: "br")
            (literal "Pour toutes questions a propos de la documentation, e-mail <")
            (create-link (list (list "HREF" "mailto:doc@FreeBSD.org"))
              (literal "doc@FreeBSD.org"))
            (literal ">.")))

	<!-- Convert " ... " to `` ... '' in the HTML output. -->
	(element quote
	  (make sequence
	    (literal "``")
	    (process-children)
	    (literal "''")))
      ]]>
    </style-specification-body>
  </style-specification>

  <external-specification id="docbook" document="freebsd.dsl">
</style-sheet>
