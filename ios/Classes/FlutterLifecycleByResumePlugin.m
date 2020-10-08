#import "FlutterLifecycleByResumePlugin.h"
#if __has_include(<flutter_lifecycle_by_resume/flutter_lifecycle_by_resume-Swift.h>)
#import <flutter_lifecycle_by_resume/flutter_lifecycle_by_resume-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_lifecycle_by_resume-Swift.h"
#endif

@implementation FlutterLifecycleByResumePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterLifecycleByResumePlugin registerWithRegistrar:registrar];
}
@end
