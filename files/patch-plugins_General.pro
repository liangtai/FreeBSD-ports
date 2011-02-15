--- src/plugins/General/General.pro.orig	2011-01-26 03:38:41.000000000 +0900
+++ src/plugins/General/General.pro	2011-02-13 01:43:06.000000000 +0900
@@ -7,6 +7,6 @@
                 hal \
                 hotkey \
                 covermanager \
-                kdenotify \
-                streambrowser
+                kdenotify #\
+#                streambrowser
 TEMPLATE = subdirs
