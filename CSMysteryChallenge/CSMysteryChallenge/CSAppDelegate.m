//
//  CSAppDelegate.m
//  CSMysteryChallenge
//
//  Created by Gemma Barlow on 1/9/13.
//  Copyright (c) 2014 Couchsurfing. All rights reserved.
//

#import "CSAppDelegate.h"
#import "TMAPIClient.h"

@implementation CSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // GB - 'Mystery challenge' credentials, required to use the TMAPIClient.
    
    [TMAPIClient sharedInstance].OAuthConsumerKey = @"h9L7plh4MExVm5Df44ZJGjyslX0urpzDhfuksZpp6JhiHujXa6";
    [TMAPIClient sharedInstance].OAuthConsumerSecret = @"JjlPUaQbMMtyO5tqqvnyHezs1r4rXt0BgprFa0VbMctf1lJEFw";
    
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

#pragma mark - Authentication for Tumblr SDK

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [[TMAPIClient sharedInstance] handleOpenURL:url];
}

@end
