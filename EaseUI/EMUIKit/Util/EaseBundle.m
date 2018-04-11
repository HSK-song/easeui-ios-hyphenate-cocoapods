#import "EaseBundle.h"

static NSString *BUNDLE_NAME = @"EaseUIResource";

@implementation EaseBundle

+ (NSString *)localizedStringForKey:(NSString *)key {
    NSBundle *bundle = [self _bundle];
    
    return [bundle localizedStringForKey:key value:nil table:nil];
}

+ (NSBundle *)_bundle {
    static NSBundle *bundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:self] pathForResource:BUNDLE_NAME ofType:@"bundle"]];
    });
    
    return bundle;
}
@end