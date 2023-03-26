import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:orange_tflite_flutter_helper/orange_tflite_flutter_helper_method_channel.dart';

void main() {
  MethodChannelOrangeTfliteFlutterHelper platform = MethodChannelOrangeTfliteFlutterHelper();
  const MethodChannel channel = MethodChannel('orange_tflite_flutter_helper');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
