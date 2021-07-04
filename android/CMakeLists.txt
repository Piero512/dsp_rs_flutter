cmake_minimum_required(VERSION 3.4.1)  # for example

set(PLUGIN_NAME "dsp_rs")

add_library(libdsp SHARED IMPORTED)
set_target_properties(libdsp PROPERTIES
  IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/libs/${ANDROID_ABI}/libdsp.so
)
