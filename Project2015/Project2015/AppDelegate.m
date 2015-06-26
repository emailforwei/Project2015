//
//  AppDelegate.m
//  Project2015
//
//  Created by john.wei on 15/6/23.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import "AppDelegate.h"
#import "HJChatListViewController.h"

@interface AppDelegate ()
@property(nonatomic,strong)UITabBarController *tabbarController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.tabbarController = [[UITabBarController alloc] init];
    UIViewController *vc = [[UIViewController alloc]init];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:1];
    
    HJChatListViewController *chatListController = [[HJChatListViewController alloc] init];
    chatListController.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    chatListController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *nav0 = [[UINavigationController alloc] initWithRootViewController:chatListController];
    nav0.navigationBar.tintColor = [UIColor blueColor];
    nav0.navigationBar.backgroundColor = [UIColor greenColor];
    
    self.tabbarController.viewControllers = [[NSArray alloc]initWithObjects:nav0,vc, nil];
    self.tabbarController.selectedIndex = 0;
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = self.tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
