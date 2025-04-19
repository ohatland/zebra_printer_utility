#import <Flutter/Flutter.h>
#import "ZebraUtilPlugin.h"
#import "SwiftZebraUtilPlugin-Swift.h"   //  <-- viktig for bridging

@implementation ZebraUtilPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZebraUtilPlugin registerWithRegistrar:registrar];
}
@end
