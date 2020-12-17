//
//  Car.h
//  Oop
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

@interface Car : Vehicle

@property int doors;
@property NSString *fuelType;

- (id) initWithData: (int)doors andFuelType: (NSString *) fuelType;

- (NSString *) accelerate;

@end
