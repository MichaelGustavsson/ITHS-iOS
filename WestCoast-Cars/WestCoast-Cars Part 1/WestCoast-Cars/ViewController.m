//
//  ViewController.m
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-14.
//

#import "ViewController.h"
#import "HttpService.h"
#import "Vehicle.h"

@interface ViewController ()
@property (nonatomic, strong)NSArray *vehicleList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.vehicleList = [[NSArray alloc] init];
    
    [[HttpService httpInstance] getVehicles:^(NSArray * _Nullable data, NSString * _Nullable errMessage) {
        
        if(data){
            NSMutableArray *vehicles = [[NSMutableArray alloc] init];
            
            for(NSDictionary *v in data){
                Vehicle *vehicle = [[Vehicle alloc]init];
                
                vehicle.imageUrl = [v objectForKey:@"imageUrl"];
                vehicle.make = [v objectForKey:@"make"];
                vehicle.model = [v objectForKey:@"model"];
                vehicle.modelYear = [v objectForKey:@"modelYear"];
                vehicle.registrationNumber = [v objectForKey:@"registrationNo"];
                
                [vehicles addObject:vehicle];
            }
            
            self.vehicleList = vehicles;
                        
            for(Vehicle *test in self.vehicleList){
                NSLog(@"%@", test.model);
            }
        }else{
            //Display error message to user...
        }
    }];
}


@end
