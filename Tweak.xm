
#import <UIKit/UIKit.h>
#import <HBLog.h>

%hook NSObject

%new
- (id)getIvar_id:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    id o;

    @try {
        o = MSHookIvar<id>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (NSInteger)getIvar_NSInteger:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    NSInteger o;

    @try {
        o = MSHookIvar<NSInteger>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (BOOL)getIvar_BOOL:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    BOOL o;

    @try {
        o = MSHookIvar<BOOL>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGFloat)getIvar_CGFloat:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGFloat o;

    @try {
        o = MSHookIvar<CGFloat>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGPoint)getIvar_CGPoint:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGPoint o;

    @try {
        o = MSHookIvar<CGPoint>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGSize)getIvar_CGSize:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGSize o;

    @try {
        o = MSHookIvar<CGSize>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGRect)getIvar_CGRect:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGRect o;

    @try {
        o = MSHookIvar<CGRect>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%end

%hook SwiftObject

%new
- (id)getIvar_id:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    id o;

    @try {
        o = MSHookIvar<id>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (NSInteger)getIvar_NSInteger:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    NSInteger o;

    @try {
        o = MSHookIvar<NSInteger>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (BOOL)getIvar_BOOL:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    BOOL o;

    @try {
        o = MSHookIvar<BOOL>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGFloat)getIvar_CGFloat:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGFloat o;

    @try {
        o = MSHookIvar<CGFloat>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGPoint)getIvar_CGPoint:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGPoint o;

    @try {
        o = MSHookIvar<CGPoint>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGSize)getIvar_CGSize:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGSize o;

    @try {
        o = MSHookIvar<CGSize>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%new
- (CGRect)getIvar_CGRect:(NSString *)arg1 {

    const char *str = [arg1 UTF8String];
    CGRect o;

    @try {
        o = MSHookIvar<CGRect>(self, str);
    }
    @catch (NSException *e) {
        HBLogDebug(@"%@", e.reason);
    }

    return o;
}

%end

%ctor {
    %init(SwiftObject = objc_getClass("_TtCs12_SwiftObject"));
}
