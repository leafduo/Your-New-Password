//
//  YNPPasswordController.m
//  Your New Password
//
//  Created by leafduo on 6/20/12.
//  Copyright (c) 2012 leafduo. All rights reserved.
//

#import "YNPPasswordController.h"

@implementation YNPPasswordController

-(IBAction)generatePassword:(id)sender {
    const int length = 16;
    /*NSString *alphabet = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNPOPQRSTUVWXYZ";
    NSString *number = @"1234567890";
    NSString *special = @"!@#$%^&amp;*()-=_+[]{};:,./\\~`?";*/
    NSString *charset = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNPOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNPOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNPOPQRSTUVWXYZ1234567890123456789012345678901234567890123456789012345678901234567890!@#$%^&amp;*()-=_+[]{};:,./\\~`?!@#$%^&amp;*()-=_+[]{};:,./\\~`?";
        
        self.password = [NSMutableString stringWithCapacity: length];
        
        for (int i=0; i<16; i++) {
            [self.password appendFormat: @"%C", [charset characterAtIndex: arc4random() % [charset length]]];
        }
        
    hidden = NO;
    [generatedPassword setHidden:NO];
    [generatedPassword setStringValue:self.password];
    [securedPassword setHidden:YES];
    [securedPassword setStringValue:self.password];
}

-(IBAction)hidenPassword:(id)sender {
    if (hidden) {
        hidden = NO;
        [generatedPassword setHidden:NO];
        [securedPassword setHidden:YES];
    } else {
        hidden = YES;
        [generatedPassword setHidden:YES];
        [securedPassword setHidden:NO];
    }
}

-(IBAction)validatePassword:(id)sender {
    if ([[inputPassword stringValue] compare:self.password] == NSOrderedSame) {
        label.stringValue = @"Your input is correct.";
    } else {
        label.stringValue = @"Sorry, but try again.";
    }
}

@synthesize password;

@end
