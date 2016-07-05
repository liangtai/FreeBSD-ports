--- src/plugins/Ui/qsui/equalizer.cpp.orig	2016-07-04 16:34:56 UTC
+++ src/plugins/Ui/qsui/equalizer.cpp
@@ -140,7 +140,7 @@ void Equalizer::loadPresets()
 {
     m_presetComboBox->clear();
     //equalizer presets
-    QString preset_path = Qmmp::configDir() + "q15.preset";
+    QString preset_path = Qmmp::configDir() + "eq15.preset";
     if(!QFile::exists(preset_path))
         preset_path = ":/qsui/eq15.preset";
     QSettings eq_preset (preset_path, QSettings::IniFormat);
