//
//  Vehicle.h
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-14.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
@property (nonatomic, strong) NSString *registrationNumber;
@property (nonatomic, strong) NSString *make;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *modelYear;
@property (nonatomic, strong) NSString *imageUrl;
@end

