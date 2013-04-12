--- src/app/app.pro.orig	2013-04-10 23:19:41.000000000 +0900
+++ src/app/app.pro	2013-04-12 07:20:19.000000000 +0900
@@ -42,13 +42,14 @@
 unix {
     target.path = /bin
     desktop.files = qmmp.desktop \
-        qmmp_enqueue.desktop
+        qmmp_enqueue.desktop \
+        qmmp_dir.desktop
     desktop.path = /share/applications
     icon16.files = images/16x16/qmmp.png
     icon32.files = images/32x32/qmmp.png
     icon48.files = images/48x48/qmmp.png
-    icon_svg.files = images/scalable/qmmp.png \
-        images/scalable/qmmp.png
+    icon_svg.files = images/scalable/qmmp.svgz \
+        images/scalable/qmmp-simple.svgz
     icon16.path = /share/icons/hicolor/16x16/apps
     icon32.path = /share/icons/hicolor/32x32/apps
     icon48.path = /share/icons/hicolor/48x48/apps
