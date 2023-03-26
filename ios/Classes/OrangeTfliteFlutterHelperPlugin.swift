import Flutter
import UIKit

public class OrangeTfliteFlutterHelperPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "orange_tflite_flutter_helper", binaryMessenger: registrar.messenger())
    let instance = OrangeTfliteFlutterHelperPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
