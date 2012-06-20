//
//  YNPPasswordController.h
//  Your New Password
//
//  Created by leafduo on 6/20/12.
//  Copyright (c) 2012 leafduo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YNPPasswordController : NSObjectController {
    NSMutableString* password;
    BOOL hidden;
    IBOutlet NSTextField* generatedPassword;
    IBOutlet NSSecureTextField* securedPassword;
    IBOutlet NSSecureTextField* inputPassword;
    IBOutlet NSTextField* label;
}

-(IBAction)generatePassword:(id)sender;
-(IBAction)hidenPassword:(id)sender;
-(IBAction)validatePassword:(id)sender;

@property NSMutableString* password;

@end
