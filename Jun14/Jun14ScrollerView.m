//
//  Jun14ScrollerView.m
//  Jun14
//
//  Created by Anne on 8/13/12.
//
//

#import "Jun14ScrollerView.h"


@implementation Jun14ScrollerView

//in the file Jun14ScrollerView.m
//alternate declaration:
@synthesize qurl;

//instance methods:
- (id) initWithFrame: (CGRect) frame color: (UIColor *) ncolor bnds: (CGRect *) bo cent: (CGPoint *) pt title: (NSString *) st font: (UIFont *) f 
{
     NSLog(@"in Jun14AScroollerView.application:initWithFrame():");
    // compiler directive to generate accessor methods according to the declared type (property)
    //@synthesize mystringobj;
    //or to add instance var to class definition
    //@synthesize userName = myname;
    
    //[ ] : "message expression" needed by runtime to dispatch the message initWithFrame(frame) of parent
    self = [super initWithFrame: frame];
    if (self) {
         [self setClipsToBounds:YES];
      
        // Initialization
        self.backgroundColor =  ncolor;
        self.bounds = *bo;
        self.center = *pt;
        CGRect rect= self.bounds;
        font = f;
  
        // This is the view with a scrolling stock quote: (view2) "hello2"
        // get the yahoo url to retrieve IBM stock quote:
        // @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"
        // and place result in myLabel.text
        //// ... ?s=IBM&f=sl1d1t1c1ohgv&e=.csv;@"http://download.finance.yahoo.com/d/quotes.csv?s=IBM&f==sl1d1t1c1ohgv&e=.csv"
        qurl = [NSString stringWithString:[self setQuoteURL ] ];

        titleString = [self getQuoteText:st surl:qurl ];
        [self setScrollingText:titleString rectangle:rect ];
        
    }
    return self;
}


- (void) refresh
{
    titleString = [self getQuoteText:str2 surl:qurl ];
    [self setScrollingText:titleString rectangle:self.bounds];
}

// get the quote url string
- (NSString *) setQuoteURL
{
    NSMutableString *tt1 = [[NSMutableString alloc] initWithString:qurl_part1];
    [tt1 appendString: stock_ticker ] ;
    [tt1 appendString: qurl_part2];
    NSLog(@" tt1= %@", tt1);
    return tt1;
}


// extract quote from remote url quote server
- (NSString *) getQuoteText:(NSString *)st surl:(NSString *)tt1
{
       
    //extract the quote from respone string
    NSString * temp = [NSString stringWithContentsOfURL:[NSURL URLWithString:  tt1]];
    
    NSArray *qArray = [temp componentsSeparatedByString:@","];
    NSUInteger num = qArray.count;
    NSLog(@"array size = %d", num);
    NSLog(@"array is %s",  qArray.description);
    for (int i = 0; i < [qArray count]; i++){
        NSLog(@" i=%d = %@", i, [qArray objectAtIndex:i]);
    }
    
    NSString * res = st;
    res = [res  stringByAppendingString: [qArray objectAtIndex: 0] ];
    res = [res stringByAppendingString: @" is " ];
    res = [res stringByAppendingString: [qArray objectAtIndex: 1] ];
    res = [res stringByAppendingString: @" at " ];
    res = [res stringByAppendingString: [qArray objectAtIndex: 2] ];
    return res;
}

//add label and customize it
- (void)setScrollingText:(NSString *)string rectangle: (CGRect ) r
{
     NSLog(@"in Jun14AScroollerView.getQuoteText():");
    
     UILabel *scrollingLabel = [[UILabel alloc] initWithFrame:r ];
    //UILabel *scrollingLabel = [[UILabel alloc] init];
    [scrollingLabel setBackgroundColor:[UIColor clearColor]];
    [scrollingLabel setFont:[UIFont fontWithName:@"Helvetica" size:self.frame.size.height / 10]];
    [scrollingLabel setText:string];
    [scrollingLabel sizeToFit];
    [self addSubview:scrollingLabel];
    // position the text off the side of the view,
    [scrollingLabel setFrame:CGRectMake(self.frame.size.width, self.frame.origin.y, scrollingLabel.frame.size.width, scrollingLabel.frame.size.height)];
    //pass label to animate it
    [self startScrolling:scrollingLabel];
}

- (void)startScrolling:(UILabel *)label
{
      NSLog(@"in Jun14AScroollerView.startScrollingText():");
    //dynamically set the duration of the animation
    float duration = (label.frame.size.width + self.frame.size.width)/111;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationRepeatCount:999];
    
    [label setFrame:CGRectMake(0-label.frame.size.width, label.frame.origin.y, label.frame.size.width, label.frame.size.height)];
    
    [UIView commitAnimations];
    //hide label outside view
    [self setClipsToBounds:YES];


}

@end
