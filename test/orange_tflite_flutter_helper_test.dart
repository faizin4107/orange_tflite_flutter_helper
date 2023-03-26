import 'package:flutter_test/flutter_test.dart';
import 'package:orange_tflite_flutter_helper/orange_tflite_flutter_helper.dart';
import 'package:orange_tflite_flutter_helper/orange_tflite_flutter_helper_platform_interface.dart';
import 'package:orange_tflite_flutter_helper/orange_tflite_flutter_helper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOrangeTfliteFlutterHelperPlatform
    with MockPlatformInterfaceMixin
    implements OrangeTfliteFlutterHelperPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OrangeTfliteFlutterHelperPlatform initialPlatform =
      OrangeTfliteFlutterHelperPlatform.instance;

  test('$MethodChannelOrangeTfliteFlutterHelper is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelOrangeTfliteFlutterHelper>());
  });

  test('getPlatformVersion', () async {
    // OrangeTfliteFlutterHelper orangeTfliteFlutterHelperPlugin = OrangeTfliteFlutterHelper();
    // MockOrangeTfliteFlutterHelperPlatform fakePlatform = MockOrangeTfliteFlutterHelperPlatform();
    // OrangeTfliteFlutterHelperPlatform.instance = fakePlatform;

    // expect(await orangeTfliteFlutterHelperPlugin.getPlatformVersion(), '42');
  });
}
