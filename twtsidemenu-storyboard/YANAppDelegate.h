//
//  YANAppDelegate.h
//  twtsidemenu-storyboard
//
//  Created by mac on 7/18/14.
//
//

#import <UIKit/UIKit.h>

@class TWTSideMenuViewController;

@interface YANAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UIViewController* mainViewController;
@property (strong, nonatomic) UIViewController* menuViewController;
@property (strong, nonatomic) TWTSideMenuViewController* sideMenuViewController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
