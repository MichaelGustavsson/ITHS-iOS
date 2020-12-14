//
//  ViewController.m
//  WestCoast-Auction
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)addMakeButton:(id)sender {
    NSString *regNo = self.regNoInput.text;
    NSString *make = self.makeInput.text;
    NSString *model = self.modelInput.text;
    NSString *mileage = self.mileageInput.text;
    NSString *email = self.emailInput.text;
    
    NSString *vehicleDetails = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@", regNo, make, model, mileage, email];
    
    self.infoLabel.text = vehicleDetails;
    
    self.regNoInput.text = @"";
    self.makeInput.text = @"";
    self.modelInput.text = @"";
    self.mileageInput.text = @"";
    self.emailInput.text = @"";
}
@end
