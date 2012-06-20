//
//  YNPAppDelegate.h
//  Your New Password
//
//  Created by leafduo on 6/20/12.
//  Copyright (c) 2012 leafduo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface YNPAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
