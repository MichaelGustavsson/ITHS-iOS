//
//  ViewController.h
//  Functions
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController
    - (void)doSomething;
    - (int)squareANumber:(int)arg1;
    - (int)sum:(int)arg1 secondArg:(int)arg2;
    - (NSString *)sayHello;
    + (int)subtract:(int)arg1 secondArg:(int)arg2;
@end

