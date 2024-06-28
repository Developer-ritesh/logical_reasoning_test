
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final app_color = Color(0xFF70c8ff);

Color app50 = Color(0xFFF0F8FF);
Color app100 = Color(0xFFDFF0FF);
Color app200 = Color(0xFFB8E2FF);
Color app300 = Color(0xFF70C8FF);
Color app400 = Color(0xFF33B3FD);
Color app500 = Color(0xFF0999EE);
Color app600 = Color(0xFF0078CC);
Color app700 = Color(0xFF0060A5);
Color app800 = Color(0xFF045288);
Color app900 = Color(0xFF0A4570);
Color app950 = Color(0xFF062B4B);
    

void openUrl(url) {
  launchUrl(
    Uri.parse(url),
    webViewConfiguration:
        WebViewConfiguration(enableDomStorage: true, enableJavaScript: true),
    mode: LaunchMode.externalNonBrowserApplication,
  );
}
