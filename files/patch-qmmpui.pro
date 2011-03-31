--- src/qmmpui/qmmpui.pro.orig	2010-09-27 16:52:41.000000000 +0900
+++ src/qmmpui/qmmpui.pro	2011-03-31 02:03:32.000000000 +0900
@@ -76,7 +76,7 @@
     translations/libqmmpui_ja.ts \
     translations/libqmmpui_es.ts
 unix { 
-    devel.files += \
+    devel.files += general.h \
                    generalfactory.h \
                    generalhandler.h \
                    playlistformat.h \
