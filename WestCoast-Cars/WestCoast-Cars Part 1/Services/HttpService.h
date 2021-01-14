//
//  HttpService.h
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-14.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSArray * __nullable data, NSString * __nullable errMessage);

@interface HttpService : NSObject
+(id _Nullable) httpInstance;
-(void)getVehicles:(nullable onComplete)completionHandler;
@end

