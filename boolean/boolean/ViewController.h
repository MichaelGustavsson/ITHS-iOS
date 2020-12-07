//
//  ViewController.h
//  boolean
//
//  Created by Michael Gustavsson on 2020-12-07.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    BOOL boolean1;
    BOOL boolean2;
}


@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UISwitch *onOff;

@end

