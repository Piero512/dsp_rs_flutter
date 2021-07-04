// ignore_for_file: camel_case_types, non_constant_identifier_names
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Native bindings to dsp.rs
class DspRs {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DspRs(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DspRs.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// \brief
  /// Get a new forward FFT handle
  ffi.Pointer<ForwardFFTHandle> forward_fft_handle_new(
    int sample_size,
  ) {
    return _forward_fft_handle_new(
      sample_size,
    );
  }

  late final _forward_fft_handle_new_ptr =
      _lookup<ffi.NativeFunction<_c_forward_fft_handle_new>>(
          'forward_fft_handle_new');
  late final _dart_forward_fft_handle_new _forward_fft_handle_new =
      _forward_fft_handle_new_ptr.asFunction<_dart_forward_fft_handle_new>();

  /// \brief
  /// Free the handle
  void forward_fft_handle_free(
    ffi.Pointer<ForwardFFTHandle> p,
  ) {
    return _forward_fft_handle_free(
      p,
    );
  }

  late final _forward_fft_handle_free_ptr =
      _lookup<ffi.NativeFunction<_c_forward_fft_handle_free>>(
          'forward_fft_handle_free');
  late final _dart_forward_fft_handle_free _forward_fft_handle_free =
      _forward_fft_handle_free_ptr.asFunction<_dart_forward_fft_handle_free>();

  /// \brief
  /// Calculate a real-valued FFT and return the values on
  Vec_float_t dsprs_forward_fft_process_real(
    ffi.Pointer<ForwardFFTHandle> fft,
    slice_ref_float_t input,
  ) {
    return _dsprs_forward_fft_process_real(
      fft,
      input,
    );
  }

  late final _dsprs_forward_fft_process_real_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_forward_fft_process_real>>(
          'dsprs_forward_fft_process_real');
  late final _dart_dsprs_forward_fft_process_real
      _dsprs_forward_fft_process_real = _dsprs_forward_fft_process_real_ptr
          .asFunction<_dart_dsprs_forward_fft_process_real>();

  ffi.Pointer<SignalHandle> dsprs_signal_new(
    slice_ref_float_t data,
    int sample_rate,
  ) {
    return _dsprs_signal_new(
      data,
      sample_rate,
    );
  }

  late final _dsprs_signal_new_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_signal_new>>('dsprs_signal_new');
  late final _dart_dsprs_signal_new _dsprs_signal_new =
      _dsprs_signal_new_ptr.asFunction<_dart_dsprs_signal_new>();

  ffi.Pointer<SignalHandle> dsprs_signal_empty(
    int sample_rate,
  ) {
    return _dsprs_signal_empty(
      sample_rate,
    );
  }

  late final _dsprs_signal_empty_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_signal_empty>>('dsprs_signal_empty');
  late final _dart_dsprs_signal_empty _dsprs_signal_empty =
      _dsprs_signal_empty_ptr.asFunction<_dart_dsprs_signal_empty>();

  void dsprs_signal_free(
    ffi.Pointer<SignalHandle> to_free,
  ) {
    return _dsprs_signal_free(
      to_free,
    );
  }

  late final _dsprs_signal_free_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_signal_free>>('dsprs_signal_free');
  late final _dart_dsprs_signal_free _dsprs_signal_free =
      _dsprs_signal_free_ptr.asFunction<_dart_dsprs_signal_free>();

  ffi.Pointer<SignalHandle> dsprs_signal_rescale(
    ffi.Pointer<SignalHandle> signal,
    double amount,
  ) {
    return _dsprs_signal_rescale(
      signal,
      amount,
    );
  }

  late final _dsprs_signal_rescale_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_signal_rescale>>(
          'dsprs_signal_rescale');
  late final _dart_dsprs_signal_rescale _dsprs_signal_rescale =
      _dsprs_signal_rescale_ptr.asFunction<_dart_dsprs_signal_rescale>();

  ffi.Pointer<ForwardFFTHandle> dsprs_forward_fft_new(
    int sample_size,
  ) {
    return _dsprs_forward_fft_new(
      sample_size,
    );
  }

  late final _dsprs_forward_fft_new_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_forward_fft_new>>(
          'dsprs_forward_fft_new');
  late final _dart_dsprs_forward_fft_new _dsprs_forward_fft_new =
      _dsprs_forward_fft_new_ptr.asFunction<_dart_dsprs_forward_fft_new>();

  ffi.Pointer<SpectrumHandle> dsprs_forward_fft_process(
    ffi.Pointer<ForwardFFTHandle> fft,
    ffi.Pointer<SignalHandle> signal,
  ) {
    return _dsprs_forward_fft_process(
      fft,
      signal,
    );
  }

  late final _dsprs_forward_fft_process_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_forward_fft_process>>(
          'dsprs_forward_fft_process');
  late final _dart_dsprs_forward_fft_process _dsprs_forward_fft_process =
      _dsprs_forward_fft_process_ptr
          .asFunction<_dart_dsprs_forward_fft_process>();

  /// \brief
  /// Window Functions
  /// Create a rectangular window handle
  ffi.Pointer<WindowHandle> dsprs_rectangular_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_rectangular_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_rectangular_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_rectangular_window>>(
          'dsprs_rectangular_window');
  late final _dart_dsprs_rectangular_window _dsprs_rectangular_window =
      _dsprs_rectangular_window_ptr
          .asFunction<_dart_dsprs_rectangular_window>();

  /// \brief
  /// Create a triangular window handle
  ffi.Pointer<WindowHandle> dsprs_triangular_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_triangular_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_triangular_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_triangular_window>>(
          'dsprs_triangular_window');
  late final _dart_dsprs_triangular_window _dsprs_triangular_window =
      _dsprs_triangular_window_ptr.asFunction<_dart_dsprs_triangular_window>();

  /// \brief
  /// Create a welch window handle
  ffi.Pointer<WindowHandle> dsprs_welch_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_welch_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_welch_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_welch_window>>('dsprs_welch_window');
  late final _dart_dsprs_welch_window _dsprs_welch_window =
      _dsprs_welch_window_ptr.asFunction<_dart_dsprs_welch_window>();

  /// \brief
  /// Create a sine window handle.
  ffi.Pointer<WindowHandle> dsprs_sine_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_sine_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_sine_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_sine_window>>('dsprs_sine_window');
  late final _dart_dsprs_sine_window _dsprs_sine_window =
      _dsprs_sine_window_ptr.asFunction<_dart_dsprs_sine_window>();

  /// \brief
  /// Create a hann window handle
  ffi.Pointer<WindowHandle> dsprs_hann_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_hann_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_hann_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_hann_window>>('dsprs_hann_window');
  late final _dart_dsprs_hann_window _dsprs_hann_window =
      _dsprs_hann_window_ptr.asFunction<_dart_dsprs_hann_window>();

  /// \brief
  /// Create a hamming window handle
  ffi.Pointer<WindowHandle> dsprs_hamming_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_hamming_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_hamming_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_hamming_window>>(
          'dsprs_hamming_window');
  late final _dart_dsprs_hamming_window _dsprs_hamming_window =
      _dsprs_hamming_window_ptr.asFunction<_dart_dsprs_hamming_window>();

  /// \brief
  /// Create a blackman window handle
  ffi.Pointer<WindowHandle> dsprs_blackman_window(
    int width,
    int offset,
    int window_length,
  ) {
    return _dsprs_blackman_window(
      width,
      offset,
      window_length,
    );
  }

  late final _dsprs_blackman_window_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_blackman_window>>(
          'dsprs_blackman_window');
  late final _dart_dsprs_blackman_window _dsprs_blackman_window =
      _dsprs_blackman_window_ptr.asFunction<_dart_dsprs_blackman_window>();

  /// \brief
  /// Apply the window to the sample data
  bool dsprs_window_apply(
    ffi.Pointer<WindowHandle> window,
    slice_ref_float_t input,
    slice_mut_float_t output,
  ) {
    return _dsprs_window_apply(
          window,
          input,
          output,
        ) !=
        0;
  }

  late final _dsprs_window_apply_ptr =
      _lookup<ffi.NativeFunction<_c_dsprs_window_apply>>('dsprs_window_apply');
  late final _dart_dsprs_window_apply _dsprs_window_apply =
      _dsprs_window_apply_ptr.asFunction<_dart_dsprs_window_apply>();
}

class ForwardFFTHandle extends ffi.Opaque {}

/// \brief
/// `&'lt [T]` but with a guaranteed `#[repr(C)]` layout.
///
/// # C layout (for some given type T)
///
/// ```c
/// typedef struct {
/// // Cannot be NULL
/// T * ptr;
/// size_t len;
/// } slice_T;
/// ```
///
/// # Nullable pointer?
///
/// If you want to support the above typedef, but where the `ptr` field is
/// allowed to be `NULL` (with the contents of `len` then being undefined)
/// use the `Option< slice_ptr<_> >` type.
class slice_ref_float_t extends ffi.Struct {
  external ffi.Pointer<ffi.Float> ptr;

  @ffi.Uint64()
  external int len;
}

/// \brief
/// Same as [`Vec<T>`][`rust::Vec`], but with guaranteed `#[repr(C)]` layout
class Vec_float_t extends ffi.Struct {
  external ffi.Pointer<ffi.Float> ptr;

  @ffi.Uint64()
  external int len;

  @ffi.Uint64()
  external int cap;
}

class SignalHandle extends ffi.Opaque {}

class SpectrumHandle extends ffi.Opaque {}

class WindowHandle extends ffi.Opaque {}

/// \brief
/// `&'lt mut [T]` but with a guaranteed `#[repr(C)]` layout.
///
/// # C layout (for some given type T)
///
/// ```c
/// typedef struct {
/// // Cannot be NULL
/// T * ptr;
/// size_t len;
/// } slice_T;
/// ```
///
/// # Nullable pointer?
///
/// If you want to support the above typedef, but where the `ptr` field is
/// allowed to be `NULL` (with the contents of `len` then being undefined)
/// use the `Option< slice_ptr<_> >` type.
class slice_mut_float_t extends ffi.Struct {
  external ffi.Pointer<ffi.Float> ptr;

  @ffi.Uint64()
  external int len;
}

typedef _c_forward_fft_handle_new = ffi.Pointer<ForwardFFTHandle> Function(
  ffi.Uint64 sample_size,
);

typedef _dart_forward_fft_handle_new = ffi.Pointer<ForwardFFTHandle> Function(
  int sample_size,
);

typedef _c_forward_fft_handle_free = ffi.Void Function(
  ffi.Pointer<ForwardFFTHandle> p,
);

typedef _dart_forward_fft_handle_free = void Function(
  ffi.Pointer<ForwardFFTHandle> p,
);

typedef _c_dsprs_forward_fft_process_real = Vec_float_t Function(
  ffi.Pointer<ForwardFFTHandle> fft,
  slice_ref_float_t input,
);

typedef _dart_dsprs_forward_fft_process_real = Vec_float_t Function(
  ffi.Pointer<ForwardFFTHandle> fft,
  slice_ref_float_t input,
);

typedef _c_dsprs_signal_new = ffi.Pointer<SignalHandle> Function(
  slice_ref_float_t data,
  ffi.Uint64 sample_rate,
);

typedef _dart_dsprs_signal_new = ffi.Pointer<SignalHandle> Function(
  slice_ref_float_t data,
  int sample_rate,
);

typedef _c_dsprs_signal_empty = ffi.Pointer<SignalHandle> Function(
  ffi.Uint64 sample_rate,
);

typedef _dart_dsprs_signal_empty = ffi.Pointer<SignalHandle> Function(
  int sample_rate,
);

typedef _c_dsprs_signal_free = ffi.Void Function(
  ffi.Pointer<SignalHandle> to_free,
);

typedef _dart_dsprs_signal_free = void Function(
  ffi.Pointer<SignalHandle> to_free,
);

typedef _c_dsprs_signal_rescale = ffi.Pointer<SignalHandle> Function(
  ffi.Pointer<SignalHandle> signal,
  ffi.Float amount,
);

typedef _dart_dsprs_signal_rescale = ffi.Pointer<SignalHandle> Function(
  ffi.Pointer<SignalHandle> signal,
  double amount,
);

typedef _c_dsprs_forward_fft_new = ffi.Pointer<ForwardFFTHandle> Function(
  ffi.Uint64 sample_size,
);

typedef _dart_dsprs_forward_fft_new = ffi.Pointer<ForwardFFTHandle> Function(
  int sample_size,
);

typedef _c_dsprs_forward_fft_process = ffi.Pointer<SpectrumHandle> Function(
  ffi.Pointer<ForwardFFTHandle> fft,
  ffi.Pointer<SignalHandle> signal,
);

typedef _dart_dsprs_forward_fft_process = ffi.Pointer<SpectrumHandle> Function(
  ffi.Pointer<ForwardFFTHandle> fft,
  ffi.Pointer<SignalHandle> signal,
);

typedef _c_dsprs_rectangular_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_rectangular_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_triangular_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_triangular_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_welch_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_welch_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_sine_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_sine_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_hann_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_hann_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_hamming_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_hamming_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_blackman_window = ffi.Pointer<WindowHandle> Function(
  ffi.Uint64 width,
  ffi.Uint64 offset,
  ffi.Uint64 window_length,
);

typedef _dart_dsprs_blackman_window = ffi.Pointer<WindowHandle> Function(
  int width,
  int offset,
  int window_length,
);

typedef _c_dsprs_window_apply = ffi.Uint8 Function(
  ffi.Pointer<WindowHandle> window,
  slice_ref_float_t input,
  slice_mut_float_t output,
);

typedef _dart_dsprs_window_apply = int Function(
  ffi.Pointer<WindowHandle> window,
  slice_ref_float_t input,
  slice_mut_float_t output,
);