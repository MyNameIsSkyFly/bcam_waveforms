#import "AudioWaveformsPlugin.h"
#if __has_include(<bcam_waveforms/bcam_waveforms-Swift.h>)
#import <bcam_waveforms/bcam_waveforms-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bcam_waveforms-Swift.h"
#endif

@implementation AudioWaveformsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioWaveformsPlugin registerWithRegistrar:registrar];
}
@end
