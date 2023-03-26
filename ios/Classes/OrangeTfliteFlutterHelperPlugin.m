#import "OrangeTfliteFlutterHelperPlugin.h"

@implementation OrangeTfliteFlutterHelperPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"orange_tflite_flutter_helper"
            binaryMessenger:[registrar messenger]];
  OrangeTfliteFlutterHelperPlugin* instance = [[OrangeTfliteFlutterHelperPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
