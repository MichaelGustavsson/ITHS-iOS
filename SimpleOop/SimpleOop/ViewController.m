//
//  ViewController.m
//  SimpleOop
//
//  Created by Michael Gustavsson on 2020-12-16.
//

#import "ViewController.h"
#import "Vehicle.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController
Car *volvo;

- (void)viewDidLoad {
    [super viewDidLoad];
        
    volvo = [[Car alloc] initWithMake: @"Volvo" andModel: @"V60 T6"];
//    volvo.make = @"VOLVO";
//    volvo.model = @"V60 T6";
    volvo.modelYear = 2020;
}

- (void)displayInfo:(Vehicle *)vehicle {
    NSLog(@"%i", vehicle.modelYear);
}

- (IBAction)button:(id)sender {
    NSLog(@"%@ %@", volvo.make, volvo.model);
    
    [self displayInfo: volvo];
    
}
@end
