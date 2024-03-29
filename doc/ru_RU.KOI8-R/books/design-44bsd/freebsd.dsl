<!--

  The FreeBSD Russian Documentation Project

  $FreeBSD: doc/ru_RU.KOI8-R/books/design-44bsd/freebsd.dsl,v 1.1 2001/07/25 14:10:02 phantom Exp $
  $FreeBSDru: frdp/doc/ru_RU.KOI8-R/books/design-44bsd/freebsd.dsl,v 1.1 2001/07/11 19:27:16 phantom Exp $
  Original revision: 1.2

-->

<!DOCTYPE style-sheet PUBLIC "-//James Clark//DTD DSSSL Style Sheet//EN" [
<!ENTITY freebsd.dsl SYSTEM "../../share/sgml/freebsd.dsl" CDATA DSSSL>
]>

<style-sheet>
  <style-specification use="docbook">
    <style-specification-body>
 
      ;; Keep the legalnotice together with the rest of the text
      (define %generate-legalnotice-link%
        #f)
    </style-specification-body>
  </style-specification>

  <external-specification id="docbook" document="freebsd.dsl">
</style-sheet>
