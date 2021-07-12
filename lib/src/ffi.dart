import 'dart:ffi';
import 'dart:io';

import 'dsp_rs_ffi.dart';

class DspRs {
  static final DspRsFfi ffi = _getDspRsFfiLibrary();

  static DspRsFfi _getDspRsFfiLibrary() {
    if (Platform.isAndroid || Platform.isLinux) {
      return DspRsFfi(DynamicLibrary.open('libminiaudio.so'));
    } else if (Platform.isMacOS) {
      return DspRsFfi(DynamicLibrary.open('libminiaudio.dylib'));
    }
    return DspRsFfi(DynamicLibrary.executable());
  }
}
