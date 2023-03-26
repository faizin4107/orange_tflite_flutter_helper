import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'orange_tflite_flutter_helper_platform_interface.dart';

/// An implementation of [OrangeTfliteFlutterHelperPlatform] that uses method channels.
class MethodChannelOrangeTfliteFlutterHelper extends OrangeTfliteFlutterHelperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('orange_tflite_flutter_helper');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
