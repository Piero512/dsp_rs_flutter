import 'dart:ffi';

import 'package:dsp_rs/dsp_rs.dart';
import 'package:dsp_rs/src/ffi.dart';

class Signal {
  final Pointer<SignalHandle> handle;

  Signal._(this.handle);

  factory Signal.newFromPtr(Pointer<slice_ref_float_t> data, int sampleRate) {
    return Signal._(DspRs.ffi.dsprs_signal_new(data.ref, sampleRate));
  }

  factory Signal.empty(int sampleRate) {
    return Signal._(DspRs.ffi.dsprs_signal_empty(sampleRate));
  }
}
