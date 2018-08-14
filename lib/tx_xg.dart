import 'dart:async';

import 'package:flutter/services.dart';

class TxXg {
  static const MethodChannel _channel =
      const MethodChannel('tx_xg');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
