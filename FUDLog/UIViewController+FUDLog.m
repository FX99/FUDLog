//
//  UIViewController+FUDLog.m
//  FUDLog
//
//  Created by lanfudong on 2020/2/27.
//

#import "UIViewController+FUDLog.h"
#import "NSObject+FUDLog.h"

@implementation UIViewController (FUDLog)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self fud_swizzleInstanceMethodSEL:@selector(viewDidAppear:) withSEL:@selector(fud_viewDidAppear:)];
        [self fud_swizzleInstanceMethodSEL:@selector(viewDidDisappear:) withSEL:@selector(fud_viewDidDisappear:)];
    });
}

- (void)fud_viewDidAppear:(BOOL)animated {
    [self fud_viewDidAppear:animated];
    NSLog(@"FUDLog: [%@_fud_viewDidAppear:]", [self class]);
}

- (void)fud_viewDidDisappear:(BOOL)animated {
    [self fud_viewDidDisappear:animated];
    NSLog(@"FUDLog: [%@_fud_viewDidDisappear:", [self class]);
}

@end
