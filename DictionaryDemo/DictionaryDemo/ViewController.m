//
//  ViewController.m
//  DictionaryDemo
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
    
    //NSDictionary *vehicles = @{@"ABC123":@"Volvo V40", @"EFG456":@"Audi A4"};
//    NSDictionary *vehicles = [[NSDictionary alloc] init];
//
//    vehicles = @{@"ABC123":@"Volvo V40", @"EFG456":@"Audi A4"};
//
//    NSLog(@"Vehicles: %@", vehicles.debugDescription);
//
//    NSString *car = [vehicles objectForKey:@"ABC123"];
//    NSLog(@"Car: %@", car);
    
    NSMutableDictionary *vehicles = [@{@"ABC123":@"Volvo V40", @"EFG456":@"Audi A4"} mutableCopy];
    
    [vehicles setObject:@"Volkswagen Tiguan" forKey:@"HIJ789"];
    
    [vehicles setValue:@"Volvo V90" forKey:@"ABC123"];
    
    for(NSString *key in vehicles){
        NSString *car = [vehicles objectForKey:key];
        NSLog(@"Car: %@", car);
    }
    
    [vehicles removeObjectForKey:@"EFG456"];

}


@end
