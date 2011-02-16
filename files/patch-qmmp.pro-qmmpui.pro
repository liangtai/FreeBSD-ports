--- src/qmmp/qmmp.pro.orig	2010-03-13 05:33:36.000000000 +0900
+++ src/qmmp/qmmp.pro	2011-02-16 19:24:11.000000000 +0900
@@ -78,7 +78,7 @@
 unix { 
     target.path = $$LIB_DIR
     devel.files += buffer.h \
-                   buffer.h \
+                   recycler.h \
                    decoder.h \
                    output.h \
                    outputfactory.h \
--- src/qmmpui/qmmpui.pro.orig	2010-08-21 02:12:28.000000000 +0900
+++ src/qmmpui/qmmpui.pro	2011-02-16 19:23:39.000000000 +0900
@@ -79,6 +79,7 @@
     translations/libqmmpui_es.ts
 unix { 
     devel.files += abstractplaylistitem.h \
+                   general.h \
                    generalfactory.h \
                    generalhandler.h \
                    playlistformat.h \
