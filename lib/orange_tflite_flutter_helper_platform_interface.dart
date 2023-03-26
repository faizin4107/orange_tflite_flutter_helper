import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'orange_tflite_flutter_helper_method_channel.dart';

abstract class OrangeTfliteFlutterHelperPlatform extends PlatformInterface {
  /// Constructs a OrangeTfliteFlutterHelperPlatform.
  OrangeTfliteFlutterHelperPlatform() : super(token: _token);

  static final Object _token = Object();

  static OrangeTfliteFlutterHelperPlatform _instance = MethodChannelOrangeTfliteFlutterHelper();

  /// The default instance of [OrangeTfliteFlutterHelperPlatform] to use.
  ///
  /// Defaults to [MethodChannelOrangeTfliteFlutterHelper].
  static OrangeTfliteFlutterHelperPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OrangeTfliteFlutterHelperPlatform] when
  /// they register themselves.
  static set instance(OrangeTfliteFlutterHelperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
