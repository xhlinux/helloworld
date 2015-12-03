//
//  AppDelegate.m
//  helloworld
//
//  Created by xiaoya on 15/10/15.
//  Copyright © 2015年 com.xiaoheng. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    NSLog(@"hello, I am coming now,%@",[UIScreen mainScreen]);
//    NSLog(@"window,%@",NSStringFromCGRect(self.window.frame));
//    [self.window setBackgroundColor:[UIColor greenColor]];
//    UIView *uiView = [[UIView alloc]initWithFrame:CGRectMake(10, 40, 300, 400)];
//    
//    [uiView setBackgroundColor:[UIColor redColor]];
//    [self.window addSubview:uiView];
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 260, 300)];
//    [imageView setImage:[UIImage imageNamed:@"110.jpg"]];
//    //imageView.contentMode = UIViewContentModeScaleAspectFit;
//    imageView.tag = 101;
//    [uiView addSubview:imageView];
//    
//    [self.window sendSubviewToBack:uiView];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    RootViewController *rootViewController = [[RootViewController alloc] init];

    self.window.rootViewController = rootViewController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"applicationWillTerminate");
}

@end
