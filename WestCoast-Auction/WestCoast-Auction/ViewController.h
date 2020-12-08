//
//  ViewController.h
//  WestCoast-Auction
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *makeLabel;
@property (weak, nonatomic) IBOutlet UITextField *makeInput;
- (IBAction)addMakeButton:(id)sender;

@end

