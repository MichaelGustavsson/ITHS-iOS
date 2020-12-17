//
//  Vehicle.m
//  SimpleOop
//
//  Created by Michael Gustavsson on 2020-12-16.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"

@implementation Vehicle
- (id) initWithMake:(NSString*)make andModel:(NSString*)model {
    self = [super init];
    if(self) {
        self.make = make;
        self.model = model;
    }
    return self;
}

- (void)break {
    NSLog(@"Breaking"); 
}

@end
