//
//  ViewController.m
//  SimpleArray
//
//  Created by Michael Gustavsson on 2020-12-07.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *vehicles = @[@"Volvo", @"Kia", @"BMW", @"Renault", @"Audi", @"Volkswagen"];
    
    self.label1.text = vehicles[5];
    
//    NSArray *values = @[@1,@2,@3,@4,@5,@6];
//
//    self.label1.text = [NSString stringWithFormat:@"%@", values[0]];
    
    //NSLog(@"My value: %@", values[4]);
    //NSLog (@"The 4th integer is: %d", myIntegers[3]);
}


@end
