import 'dart:ffi';

import 'dsp_rs_ffi.dart';
import 'ffi.dart';

class Window {
  final Pointer<WindowHandle> _handle;

  Window._(this._handle);

  factory Window.rectangular(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_rectangular_window(width, offset, windowLength));
  }

  factory Window.triangular(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_triangular_window(width, offset, windowLength));
  }

  factory Window.welch(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_welch_window(width, offset, windowLength));
  }

  factory Window.sine(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_sine_window(width, offset, windowLength));
  }

  factory Window.hann(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_hann_window(width, offset, windowLength));
  }

  factory Window.hamming(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_hamming_window(width, offset, windowLength));
  }

  factory Window.blackman(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_rectangular_window(width, offset, windowLength));
  }

  int get windowLength {
    return DspRs.ffi.dsprs_window_len(_handle);
  }

  bool applyWindow(Pointer<slice_ref_float_t> constInput,
      Pointer<slice_mut_float_t> outputSlice) {
    return DspRs.ffi
        .dsprs_window_apply(_handle, constInput.ref, outputSlice.ref);
  }
}
