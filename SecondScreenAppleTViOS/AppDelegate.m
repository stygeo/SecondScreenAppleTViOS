//
//  AppDelegate.m
//  SecondScreenAppleTViOS
//
//  Created by Jeffrey Wilcke on 7/20/13.
//  Copyright (c) 2013 example. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    for(UIScreen *screen in [UIScreen screens]) {
        UIWindow *window = [[UIWindow alloc] init];
        window.screen = screen;
        
        CGRect rect = CGRectZero;
        rect.size = screen.currentMode.size;
        window.frame = rect;
        window.clipsToBounds = YES;
        
        UIView *v = [[UIView alloc] initWithFrame:rect];
        v.backgroundColor = [UIColor greenColor];
        v.clipsToBounds = YES;
        [window addSubview:v];
        
        UILabel *label = [[UILabel alloc] init];
        label.text = [NSString stringWithFormat:@"UIScreen #%d", [[UIScreen screens] indexOfObject:screen]];
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont boldSystemFontOfSize:20];
        label.backgroundColor = [UIColor clearColor];
        
        [label sizeToFit];
        label.center = CGPointMake(rect.size.width / 2, rect.size.height / 2);
        
        [v addSubview:label];
        
        [window makeKeyAndVisible];
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
