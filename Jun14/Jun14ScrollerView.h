//
//  Jun14ScrollerView.h
//  Jun14
//
//  Created by Anne on 8/13/12.
//
//

#import <UIKit/UIKit.h>

extern NSString * const stock_ticker ;
extern NSString * const qurl_part1;
extern NSString * const qurl_part2;
extern NSString * str2;


@interface Jun14ScrollerView : UIView
{
    // should declare constant stock ticker
   
    NSString *titleString;  //static type
    //NSString *qurl ; //url string for specifi stock
    UIFont *  font;
   
}

//Let one of the new instance variables be a property of class Jun14ScrollerView.
@property (nonatomic, copy) NSString *qurl;

- (NSString *) titleString;
- (void)       setTitleString: (NSString *) title;
- (NSString *) setQuoteURL;
- (NSString *) getQuoteText:(NSString *)string surl:(NSString *) qurl;
- (void)       setScrollingText:(NSString *)string rectangle: (CGRect) r;
- (void)       startScrolling:(UILabel *)label;
- (void)       refresh;

//others
// id is the dynamic object type
- (id)        initWithFrame: (CGRect) frame color: (UIColor *) col bnds: (CGRect *)bo cent: (CGPoint *) p  title: (NSString *) s font: (UIFont *) f;

- (void)      drawRect: (CGRect) rect ;


@end
