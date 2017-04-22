#include "mooseRootListController.h"

@implementation mooseRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
+ (NSString *)hb_specifierPlist {
	return @"Root";
}
-(void)github {

   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/harrywantstodev/Moose"]];
}
@end
