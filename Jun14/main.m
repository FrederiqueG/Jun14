//
//  main.m
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Jun14AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSLog(@"Entering Jun14 main.m.");
        //There is only one object of class UIDevice, and it already
		//exists.  Get the address of this singleton object.
		UIDevice *device = [UIDevice currentDevice];
        NSString *version = device.systemVersion;
        id devId = device.self;
        NSString * sysname = device.systemName;
        NSLog(@"dev version = %@  name = %@", version,  sysname);

        //There is only one object of class UIScreen, and it already
		//exists.  Get the address of this singleton object.
		UIScreen *screen = [UIScreen mainScreen];
        //get CGRect has an (x,y) origin and a size (width, height) 
        CGRect bounds = [screen bounds];
		NSLog(@"Origin is (%g, %g), dimensions are %g by %g.", 
              bounds.origin.x, bounds.origin.y,
              bounds.size.width, bounds.size.height
              );
       
		NSLog(@"IOs simulator: can print device id= %g but NOT the device unique identifier", devId );
       // or:
        //[window initWithFrame: [[UIScreen mainScreen] bounds]];
        //called by main. creates the application and the application delegate
        //CGRect  viewRect = CGRectMake(10, 10, 100, 100);
        //UIView* myView = [[UIView alloc] initWithFrame:viewRect];
        // pass NSdate object as one of the strings passed to one of the subviews
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([Jun14AppDelegate class]));
    }
}
