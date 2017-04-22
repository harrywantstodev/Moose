#import "libcolorpicker.h"
#import <UIKit/UIKit.h>

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.harrywantstodev.moose.plist"];

%hook UITextInputTraits
-(void)_setColorsToMatchTintColor:(id)arg1
{
  return %orig (LCPParseColorString([prefs objectForKey:@"aColor"], @"#007AFF"));
}
%end

static void loadPrefs()
{

    if(prefs)
    {
      (LCPParseColorString([prefs objectForKey:@"aColor"], @"#007AFF"));
    }
    [prefs release];
}


%ctor {

    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(),
        NULL,
        (CFNotificationCallback)loadPrefs,
        CFSTR("com.harrywantstodev.moose/settingschanged"),
        NULL,
        CFNotificationSuspensionBehaviorDeliverImmediately);
    loadPrefs();
  }
