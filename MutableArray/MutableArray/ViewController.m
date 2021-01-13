//
//  ViewController.m
//  MutableArray
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
    
    NSMutableArray *vehicles = [[NSMutableArray alloc] initWithObjects:@"Volvo", @"Kia",@"BMW", nil];
    
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
    NSLog(@"------------------------------");
    
    //Insert new object to the end of the array...
    [vehicles addObject:@"Renault"];
    
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
    NSLog(@"------------------------------");
    
    //Add new object at a specific position...
    [vehicles insertObject:@"Audi" atIndex:1];
    
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
    NSLog(@"------------------------------");
    
    //Remove an object from a specific position...
    [vehicles removeObjectAtIndex:0];
    
    for(NSString *car in vehicles){
        NSLog(@"Car: %@", car);
    }
    
    self.label2.text = vehicles[0];
    
    
}


@end
