//
//  Jun14View.m
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Jun14View.h"

@implementation Jun14View

// class method declaration start with +
// object instance of a class methods start with - 

// declare the string to display as an instance variable 

// instantce variables become properties when they have get and set methods
// via @property or @synthesize
// ex: create object using a factory method:g stringWithFormat:@"myname is %@", self.userName];
// NSString *myString = [NSStrin
// or 
  //NSString *usrName = [[NSString alloc] initWithFormat:@"my name is  %@!", userName];
//NSDate *now = [NSDate date]; 
//NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar]; 
//[calendar setTimeZone:[NSTimeZone systemTimeZone]]; 
//NSDateComponents *dc = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit) fromDate:now];  
//NSLog(@"The time is %d:%d:%d", [dc hour], [dc minute], [dc second]); 


//instance methods:
- (id) initWithFrame: (CGRect) frame color: (UIColor *) ncolor bnds: (CGRect *) bo cent: (CGPoint *) pt title: (NSString *) st
//- (id) initWithFrame: (CGRect) frame 
{
    // compiler directive to generate accessor methods according to the declared type (property)
    //@synthesize mystringobj;
    //or to add instance var to class definition
    //@synthesize userName = myname;
    
    //[ ] : "message expression" needed by runtime to dispatch the message initWithFrame(frame) of parent
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization 
        self.backgroundColor =  ncolor;
        self.bounds = *bo;
        self.center = *pt;
        titleString =  st;
        //float x1 = self.center.x;
        //float y1 = self.center.y;
        CGRect rect= self.bounds;
        UIDevice *device = [UIDevice currentDevice];
        float bl = device.batteryLevel;
        NSString * blst = [NSString stringWithFormat:@" battery level = %1.6f", bl];

        UILabel *myLabel = [[UILabel alloc] initWithFrame:rect ];
        //To display a text within UILabel use:

        myLabel.text = st;
        NSString * f = @"hello1";
        if([ f isEqualToString: myLabel.text]) {
            myLabel.text = [myLabel.text stringByAppendingString: blst ];
        } else {
            //"hello2"
            
        }
            
     
        myLabel.backgroundColor = self.backgroundColor;
        // add UILabel to your view:
        [self addSubview:myLabel];

      
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void) drawRect: (CGRect) rect
//{
   
    // Drawing code
//    UIFont *font = [UIFont systemFontOfSize: 24.0];
//    NSString *string = @"This is June14 project";
 //   CGPoint point = CGPointMake(0.0, 0.0);
 //   [string drawAtPoint: point withFont: font];
  //[tstring drawAtPoint: point withFont: font];
//}


-(void) setDate: (NSString *)ndate
{
    if (!ndate)
        NSLog(@"The passed date is invalid!");
    cdate = ndate;   
}


- (void) setName: (NSString *) name
{
    if (!name)
        NSLog(@"no user name passed!");
    userName = name; 
}

- (void) setTitleString: (NSString *) name
{
       titleString = name; 
}


@end
