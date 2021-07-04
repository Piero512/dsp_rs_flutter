//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <dsp_rs/dsp_rs_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dsp_rs_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DspRsPlugin");
  dsp_rs_plugin_register_with_registrar(dsp_rs_registrar);
}
