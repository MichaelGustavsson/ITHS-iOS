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
    NSString *make = self.makeInput.text;
    
    self.makeLabel.text = make;
    self.makeInput.text = @"";
}
@end
