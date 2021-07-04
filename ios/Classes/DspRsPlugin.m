#import "DspRsPlugin.h"
#if __has_include(<dsp_rs/dsp_rs-Swift.h>)
#import <dsp_rs/dsp_rs-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dsp_rs-Swift.h"
#endif

@implementation DspRsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDspRsPlugin registerWithRegistrar:registrar];
}
@end
