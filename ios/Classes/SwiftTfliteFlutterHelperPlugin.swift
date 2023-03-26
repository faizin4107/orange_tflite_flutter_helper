import Flutter
import UIKit

public class SwiftOrangeTfliteFlutterHelperPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "orange_tflite_flutter_helper", binaryMessenger: registrar.messenger())
    let instance = SwiftOrangeTfliteFlutterHelperPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
