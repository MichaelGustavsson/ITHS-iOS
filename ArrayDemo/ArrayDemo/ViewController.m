//
//  ViewController.m
//  ArrayDemo
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
    
//    NSArray *vehicles = @[@"Volvo", @"Kia", @"BMW", @"Audi"];
//
//    NSString *car = vehicles[0];
//
//
//    NSLog(@"Car: %@", car);
    
    NSMutableArray *vehicles = [[NSMutableArray alloc] initWithObjects:@"Volvo", @"Kia", @"BMW", @"Audi", nil];
    
    //ForEach...
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
    NSLog(@"------------------------------");
    
    [vehicles addObject:@"Volkswagen"];
    
    NSLog(@"------------------------------");
    
    [vehicles insertObject:@"Renault" atIndex:2];
    
    NSLog(@"------------------------------");
    
    [vehicles removeObjectAtIndex:0];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


@end
