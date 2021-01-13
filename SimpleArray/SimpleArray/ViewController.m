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
    
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
}


@end
