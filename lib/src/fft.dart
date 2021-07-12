import 'dart:ffi';
import 'dart:typed_data';

import 'package:dsp_rs/src/ffi.dart';
import 'package:ffi/ffi.dart';

import 'dsp_rs_ffi.dart';

class Window {
  final Pointer<WindowHandle> _handle;

  Window._(this._handle);

  static Window rectangular(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_rectangular_window(width, offset, windowLength));
  }

  static Window triangular(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_triangular_window(width, offset, windowLength));
  }

  static Window welch(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_welch_window(width, offset, windowLength));
  }

  static Window sine(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_sine_window(width, offset, windowLength));
  }

  static Window hann(int width, int offset, int windowLength) {
    return Window._(DspRs.ffi.dsprs_hann_window(width, offset, windowLength));
  }

  static Window hamming(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_hamming_window(width, offset, windowLength));
  }

  static Window blackman(int width, int offset, int windowLength) {
    return Window._(
        DspRs.ffi.dsprs_rectangular_window(width, offset, windowLength));
  }

  int get windowLength {
    return DspRs.ffi.dsprs_window_len(_handle);
  }

  Float32List applyWindow(Pointer<Float> constInput, int length) {
    var arena = Arena();
    var outputArray = arena.call<Float>(length);
    var inputSlice = arena.call<slice_ref_float_t>();
    inputSlice.ref.ptr = constInput;
    inputSlice.ref.len = length;
    var outputSlice = arena.call<slice_mut_float_t>();
    outputSlice.ref.ptr = outputArray;
    outputSlice.ref.len = length;
    var result =
        DspRs.ffi.dsprs_window_apply(_handle, inputSlice.ref, outputSlice.ref);
    if (result) {
      return Float32List.fromList(outputArray.asTypedList(length));
    } else {
      throw "Error applying window!";
    }
  }
}
