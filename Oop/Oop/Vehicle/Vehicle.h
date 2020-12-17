//
//  Vehicle.h
//  Oop
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property NSString *make;
@property NSString *model;


- (id) initWithMake: (NSString *)make andModel: (NSString *)model;

- (NSString *) hitTheBrake;


@end

