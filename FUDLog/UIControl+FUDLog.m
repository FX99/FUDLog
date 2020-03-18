//
//  UIControl+FUDLog.m
//  FUDLog
//
//  Created by lanfudong on 2020/2/27.
//

#import "UIControl+FUDLog.h"
#import "NSObject+FUDLog.h"

@implementation UIControl (FUDLog)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self fud_swizzleInstanceMethodSEL:@selector(sendAction:to:forEvent:) withSEL:@selector(fud_sendAction:to:forEvent:)];
    });
}

- (void)fud_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    [self fud_sendAction:action to:target forEvent:event];
    NSLog(@"FUDLog: [%@_%@]_%@_sendAction", [target class], NSStringFromSelector(action), NSStringFromClass([self class])?:@"defaultControl");
}

@end
