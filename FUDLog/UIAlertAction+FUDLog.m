//
//  UIAlertAction+FUDLog.m
//  FUDLog
//
//  Created by lanfudong on 2020/2/28.
//

#import "UIAlertAction+FUDLog.h"
#import "NSObject+FUDLog.h"

@implementation UIAlertAction (FUDLog)

+ (void)load {
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        [self fud_swizzleClassMethodSEL:@selector(actionWithTitle:style:handler:) withSEL:@selector(fud_actionWithTitle:style:handler:)];
    });
}

+ (instancetype)fud_actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void (^)(UIAlertAction * _Nonnull))handler {
    void (^newHandler)(UIAlertAction * _Nonnull) = ^(UIAlertAction * _Nonnull action) {
        if (handler) handler(action);
        NSLog(@"FUDLog: [%@_alertActionOnTitle:\"%@\"_actionStyle:%ld]", [self class], title, style);
    };
    
    return [self fud_actionWithTitle:title style:style handler:newHandler];
}

@end
