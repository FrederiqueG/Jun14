//
//  Jun14View.m
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Jun14View.h"
/*
Bits 16 to 23 inclusive of the color represent the amount of red in the color.
Change these bits to a fraction in the range 0 to 1 inclusive.
Similarly, bits 8 to 15 inclusive represent the amount of green;
bits 0 to 7 inclusive represent the amount of blue.
*/

#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)


@implementation Jun14View

// class method declaration start with +
// object instance of a class methods start with - 

// declare the string to display as an instance variable 
// instantce variables become properties when they have get and set methods
// via @property or @synthesize
// ex: create object using a factory method: NSString *myString = [NSStringg stringWithFormat:@"myname is %@", self.userName]; 
// or 
//NSString *usrName = [[NSString alloc] initWithFormat:@"my name is  %@!", userName];
//NSDate *now = [NSDate date]; 
//NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar]; 
//[calendar setTimeZone:[NSTimeZone systemTimeZone]]; 
//NSDateComponents *dc = [calendar components:(NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit) fromDate:now];  
//NSLog(@"The time is %d:%d:%d", [dc hour], [dc minute], [dc second]); 


//instance methods:
- (id) initWithFrame: (CGRect) frame color: (UIColor *) ncolor bnds: (CGRect *) bo cent: (CGPoint *) pt title: (NSString *) st font: (UIFont *) f 

//- (id) initWithFrame: (CGRect) frame 
{
     NSLog(@"...in Jun14View.initWithFrame()()");
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
        font = f;
        
        CGRect rect= self.bounds;
        // catenate extra string to display in view1 myLabel:
        UIDevice *device = [UIDevice currentDevice];
        float bl = device.batteryLevel;
        NSString * blst = [NSString stringWithFormat:@" battery level = %1.6f", bl];
        UILabel *myLabel = [[UILabel alloc] initWithFrame:rect ];
        //To display a text within UILabel use:
        myLabel.text = st;
        NSString * f = @"  Hola!  ";
        if([ f isEqualToString: myLabel.text]) {
            myLabel.text = [myLabel.text stringByAppendingString: blst ];
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
     NSLog(@"...in Jun14View.setDate()");
    if (!ndate)
        NSLog(@"The passed date is invalid!");
    cdate = ndate;   
}


- (void) setName: (NSString *) name
{
     NSLog(@"...in Jun14View.setName()");
    if (!name)
        NSLog(@"no user name passed!");
    userName = name; 
}

- (void) setTitleString: (NSString *) name
{
     NSLog(@"...in Jun14View.setTitleString()");
       titleString = name; 
}



@end
