
//
//  Jun14View.h
//  Jun14
//
//  Created by Frederique Giraud on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface Jun14View: UIView
{
    // instance variables: 
    //in the file View.h, inside the curly braces
	NSString *string;
	CGPoint point;
	UIFont *font;
    
    ////@property (nonatomic, copy) NSString *userName;
    NSString *userName; //static type
    NSString *titleString;  //static type
    NSString * cdate;
    //Font
    //background color;
}


@property (nonatomic, copy) NSString *string;

// - :  method type identifier = instance method
// getters:
- (NSString *) userName;
- (NSString *) titleString;
- (NSString *) cdate;  // extracted from NSDate

// setters:
//- (void) setTag:(NSInteger)tag;
//- (void) setCenter: (CGPoint *) ce;
//- (void) setBackgroundColor:(UIColor *)backgroundColor;
//-(void) setBounds:(CGRect*)bounds;
- (void) setDate: ( NSString *) date;
- (void) setName: (NSString *) username;
- (void) setTitleString: (NSString *) title;

//others
// id is the dynamic object type
- (id) initWithFrame: (CGRect) frame color: (UIColor *) col bnds: (CGRect *)bo cent: (CGPoint *) p  title: (NSString *) s font: (UIFont *) f;

- (void) drawRect: (CGRect) rect ;

@end
