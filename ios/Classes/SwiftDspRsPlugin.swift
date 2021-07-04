import Flutter
import UIKit

public class SwiftDspRsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "dsp_rs", binaryMessenger: registrar.messenger())
    let instance = SwiftDspRsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public func dummyMethodToEnforceBundling(){
    dsprs_signal_empty(441000);
  }
}
