import 'dart:ffi';

import 'package:dsp_rs/src/ffi.dart';

import 'dsp_rs_ffi.dart';

class ForwardFFT {
  Pointer<ForwardFFTHandle> handle;
  bool finalized = false;
  ForwardFFT._(this.handle);

  factory ForwardFFT(int sampleSize) {
    assert(sampleSize % 2 == 0 || sampleSize % 3 == 0);
    return ForwardFFT._(DspRs.ffi.dsprs_forward_fft_new(sampleSize));
  }

  void dispose() {
    if (!finalized) {
      DspRs.ffi.forward_fft_handle_free(handle);
    }
    finalized = true;
  }

  bool processReals(
      Pointer<slice_ref_float_t> input, Pointer<slice_mut_float_t> output) {
    return DspRs.ffi
        .dsprs_forward_fft_process_real(handle, input.ref, output.ref);
  }
}
