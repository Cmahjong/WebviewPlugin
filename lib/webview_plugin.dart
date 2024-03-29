import 'dart:async';

import 'package:flutter/services.dart';

class WebviewPlugin {
  static const MethodChannel _channel =
      const MethodChannel('webview_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static loadNativePage(String url){
    _channel.invokeMethod("loadNativePage",url);
  }
}
