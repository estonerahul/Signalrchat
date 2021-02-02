#import "Signalr1Plugin.h"
#if __has_include(<signalr1/signalr1-Swift.h>)
#import <signalr1/signalr1-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "signalr1-Swift.h"
#endif

@implementation Signalr1Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSignalr1Plugin registerWithRegistrar:registrar];
}
@end
