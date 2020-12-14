//
//  ViewController.m
//  TextManipulating
//
//  Created by Michael Gustavsson on 2020-12-12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}



- (IBAction)shadowButton:(id)sender {
    self.label.layer.shadowColor = [[UIColor blackColor]
                               CGColor];
    self.label.layer.shadowOpacity = 0.5;
    self.label.layer.shadowRadius = 2.0f;
    self.label.layer.shadowOffset = CGSizeMake(2, 2);
    
}

- (IBAction)backgroundButton:(id)sender {
    self.label.backgroundColor = [UIColor yellowColor];
}

- (IBAction)fontButton:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Futura" size:50]];
}

- (IBAction)myButton:(id)sender {
    
    self.label.text = @"Demo";
    self.label.textColor = [UIColor redColor];
}
@end
