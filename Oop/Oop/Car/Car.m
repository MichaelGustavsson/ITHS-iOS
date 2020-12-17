//
//  Car.m
//  Oop
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@implementation Car

- (id)initWithData:(int)doors andFuelType:(NSString *)fuelType {
    self = [super initWithMake:@"Fiat" andModel:@"Uno"];
    
    if(self){
        self.doors = 2;
        self.fuelType = @"bensin";
    }
    
    return self;
}

- (NSString *)accelerate{
    return @"Jag gasar på!!!";
}

@end
