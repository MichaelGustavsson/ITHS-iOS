//
//  Vehicle.m
//  Oop
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"


@implementation Vehicle


//Constructor ???
- (id)initWithMake:(NSString *)make andModel:(NSString *)model {
    self = [super init];
    
    if(self){
        self.make = make;
        self.model = model;
    }
    
    return self;
}

- (NSString *)hitTheBrake {
    return @"Braking!!!";
}

@end
