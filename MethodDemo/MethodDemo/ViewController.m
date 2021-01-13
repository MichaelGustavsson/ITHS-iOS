//
//  ViewController.m
//  MethodDemo
//
//  Created by Michael Gustavsson on 2021-01-13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self createVehicle:@"Volvo" :@"X40"];
    [self createVehicle:<#(NSString *)#> :<#(NSString *)#>]
    
    [self createVehicleWithMake:@"BM" vehicleModel:@"X1"];
    
}

- (void) createVehicle: (NSString *)make :(NSString *)model{
    NSLog(@"Car make %@, model %@", make, model);
}

- (void)createVehicleWithMake: (NSString *)make vehicleModel:(NSString *)model{
    NSLog(@"Car make %@, model %@", make, model);
}

@end
