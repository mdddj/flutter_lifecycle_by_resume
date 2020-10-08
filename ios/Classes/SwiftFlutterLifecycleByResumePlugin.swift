import Flutter
import UIKit

public class SwiftFlutterLifecycleByResumePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_lifecycle_by_resume", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterLifecycleByResumePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
