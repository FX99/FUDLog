//
//  UIResponder+FUDLog.m
//  FUDLog
//
//  Created by lanfudong on 2020/2/29.
//

#import "UIResponder+FUDLog.h"
#import "NSObject+FUDLog.h"

@implementation UIResponder (FUDLog)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self fud_swizzleInstanceMethodSEL:@selector(becomeFirstResponder) withSEL:@selector(fud_becomeFirstResponder)];
        [self fud_swizzleInstanceMethodSEL:@selector(resignFirstResponder) withSEL:@selector(fud_resignFirstResponder)];
    });
}

- (BOOL)fud_becomeFirstResponder {
    if ([self isKindOfClass:[UITextView class]]) {
        UITextView *textView = (UITextView *)self;
        NSLog(@"FUDLog: [%@_becomeFirstResponder]_text(%@)", [self class], textView.text);
    } else if ([self isKindOfClass:[UITextField class]]) {
        UITextField *textField = (UITextField *)self;
        NSLog(@"FUDLog: [%@_becomeFirstResponder]_text(%@)", [self class], textField.text);
    }
    return [self fud_becomeFirstResponder];
}

- (BOOL)fud_resignFirstResponder {
    if ([self isKindOfClass:[UITextView class]]) {
        UITextView *textView = (UITextView *)self;
        NSLog(@"FUDLog: [%@_resignFirstResponder]_text(%@)", [self class], textView.text);
    } else if ([self isKindOfClass:[UITextField class]]) {
        UITextField *textField = (UITextField *)self;
        NSLog(@"FUDLog: [%@_resignFirstResponder]_text(%@)", [self class], textField.text);
    }
    return [self fud_resignFirstResponder];
}

@end
