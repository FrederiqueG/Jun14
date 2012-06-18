//
//  Jun14AppDelegate.h
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Jun14View;


// this class conforms to the UIApplicationDelegate protocol
//to receive notifications from UIApplication by it calling the protocol
// methods implemented in this class

@interface Jun14AppDelegate : UIResponder <UIApplicationDelegate> {
    Jun14View *view1;
    Jun14View *view2; 
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
