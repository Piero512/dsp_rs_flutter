import 'dart:ffi';

import 'package:dsp_rs/dsp_rs.dart';

class Spectrum {
  Pointer<SpectrumHandle> handle;

  Spectrum(this.handle);
}
