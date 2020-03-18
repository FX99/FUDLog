//
//  UIGestureRecognizer+FUDLog.m
//  FUDLog
//
//  Created by lanfudong on 2020/2/29.
//

#import "UIGestureRecognizer+FUDLog.h"
#import "NSObject+FUDLog.h"

@implementation UIGestureRecognizer (FUDLog)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self fud_swizzleInstanceMethodSEL:@selector(initWithTarget:action:) withSEL:@selector(fud_initWithTarget:action:)];
    });
}

- (instancetype)fud_initWithTarget:(id)target action:(SEL)action {
    
    
    
    return [self fud_initWithTarget:target action:action];
}

@end
