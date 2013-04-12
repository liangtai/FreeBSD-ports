--- src/plugins/General/kdenotify/kdenotify.pro.orig	2013-04-10 23:19:41.000000000 +0900
+++ src/plugins/General/kdenotify/kdenotify.pro	2013-04-12 09:00:30.000000000 +0900
@@ -43,7 +43,7 @@
                translations/kdenotify_plugin_ja.ts \
                translations/kdenotify_plugin_es.ts
 
-images.files = app_icon.png \
-               empty_cover.png
+images.files = images/app_icon.png \
+               images/empty_cover.png
 images.path = /share/qmmp/images/
 INSTALLS += images
