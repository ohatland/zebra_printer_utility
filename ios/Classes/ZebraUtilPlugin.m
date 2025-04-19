#import <Flutter/Flutter.h>
#import "ZebraUtilPlugin.h"

#if __has_include(<zebrautil/zebrautil-Swift.h>)
#import <zebrautil/zebrautil-Swift.h>   // auto‑generated bridging header
#else
#import "zebrautil-Swift.h"
#endif

@implementation ZebraUtilPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZebraUtilPlugin registerWithRegistrar:registrar];
}
@end
