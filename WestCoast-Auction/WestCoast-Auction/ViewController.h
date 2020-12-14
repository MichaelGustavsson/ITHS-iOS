//
//  ViewController.h
//  WestCoast-Auction
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UITextField *regNoInput;
@property (weak, nonatomic) IBOutlet UITextField *makeInput;
@property (weak, nonatomic) IBOutlet UITextField *modelInput;
@property (weak, nonatomic) IBOutlet UITextField *mileageInput;
@property (weak, nonatomic) IBOutlet UITextField *emailInput;


- (IBAction)addMakeButton:(id)sender;

@end

