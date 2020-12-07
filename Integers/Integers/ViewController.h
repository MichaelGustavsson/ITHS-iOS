//
//  ViewController.h
//  Integers
//
//  Created by Michael Gustavsson on 2020-12-07.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    int value;
    int cost;
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

