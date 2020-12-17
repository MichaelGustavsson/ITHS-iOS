//
//  ViewController.m
//  Oop
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import "ViewController.h"
#import "Vehicle.h"
#import "Car.h"


@interface ViewController ()

@end

@implementation ViewController

Car *car;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //car = [[Car alloc] initWithMake:@"Volvo" andModel:@"V60 T6"];
    car = [[Car alloc] initWithData:2 andFuelType:@"Bensin Hybrid"];
}


- (IBAction)button2:(id)sender {
    car.doors = 5;
    car.fuelType = @"Bensin Hybrid";
    
    [self displayInfo: car];
    
}

- (IBAction)button:(id)sender {
    
    [self displayInfo: car];
}


- (void) displayInfo: (Car *)car {
    NSLog(@"Make - %@ Model - %@ Doors-  %i Fueltype - %@", car.make, car.model, car.doors, car.fuelType); //getter
    
    NSString *value = [car hitTheBrake]; //Method call
    NSString *result = [car accelerate]; //Method call
    
    NSLog(@"%@ %@", value, result);
}
@end
