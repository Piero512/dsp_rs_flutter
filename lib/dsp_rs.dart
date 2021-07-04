import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'src/dsp_rs.dart' as ffi;
import 'package:flutter/services.dart';

class DspRs {
  static const MethodChannel _channel = MethodChannel('dsp_rs');

  static Future<String?> get platformVersion async {
    loadLibrary();
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static loadLibrary() {
    var library = ffi.DspRs(Platform.isAndroid
        ? DynamicLibrary.open('libdsp.so')
        : DynamicLibrary.process());
    var ptr = library.dsprs_signal_empty(441000);
    library.dsprs_signal_free(ptr);
    print("Didn't crash!");
  }
}
