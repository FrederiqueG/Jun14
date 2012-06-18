//
//  Jun14AppDelegate.m
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Jun14AppDelegate.h"
#import "Jun14View.h"

@implementation Jun14AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //grab the only main  screen.
    UIScreen *screen = [UIScreen mainScreen];
    // get its app frame
    CGRect applicationFrame = screen.applicationFrame;
    // get its screen bounds
    CGRect bounds = screen.bounds;
    
    // instantiate initial  view:
    //allocate first view:
    UIColor * col1 = [UIColor redColor]; 
    CGRect rect1 = CGRectMake(20.0, 20.0, 320.0, 150.0);
    CGPoint p;
    p.x= 160.0;
    p.y = 60.0;
    NSString *str =@"hello1"; 
    NSLog(@"rect1: %@", NSStringFromCGRect(rect1));
    
    view1 = [[Jun14View alloc] initWithFrame: applicationFrame color: col1 bnds: &rect1 cent: &p title: str];   
    //view1.alpha = .5;
    //NSLog(@"view1 center= %f , %f", view1.center.x, view1.center.y);
    
    UIColor * col2 = [UIColor greenColor]; 
    CGRect rect2 = CGRectMake(100, 18, 220.0, 260.0);
    NSLog(@"rect2: %@", NSStringFromCGRect(rect2));
    CGPoint p2;
    p2.x= 160.0;
    p2.y = 300.0;
    NSString *str2 =@"hello2"; 
    view2 = [[Jun14View alloc] initWithFrame: applicationFrame color: col2 bnds: &rect2 cent: &p2 title: str2];
    //view2.alpha = .5;
      NSLog(@"view2 center= %f , %f", view2.center.x, view2.center.y);
    
    //[view1 setTitle: @"Hello1"];
    //[view1 setName:  @" some name"]; 
    //[view1 setDate: [[NSDate date ] descriptionWithLocale: @"yyyy-MM-dd" ]];

    // instantiate the app window of given size (fill available size)
    self.window = [[UIWindow alloc] initWithFrame: bounds];
    //self.window.backgroundColor = [UIColor whiteColor];
    // add the Jun14 view to the app window: the window can contain several views:
    [self.window addSubview: view1];
    [self.window addSubview: view2];

    //[self.window makeKeyAndVisible];    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor orangeColor];
    
    //change the size of the view ,
    // [ view1 setBounds: &rect1]; 
    //but move the origin to the center of the view.
   
    [self.window makeKeyAndVisible];
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
