//
//  HttpService.m
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-14.
//

#import "HttpService.h"

#define URL_BASE "http://localhost:5001/"
#define URL_VEHICLES "vehicles"

@implementation HttpService

+(id _Nullable) httpInstance{
    
    //Singelton instantiering...
    static HttpService *sharedInstance = nil;
    
    @synchronized (self) {
        if(sharedInstance == nil){
            sharedInstance = [[self alloc] init];
        }
        
        return sharedInstance;
    }
    
}

-(void)getVehicles:(nullable onComplete)completionHandler{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_VEHICLES]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data != nil){
            NSError *err;
            NSArray *response = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if(err == nil){
                NSLog(@"Response: %@", response.debugDescription);
                completionHandler(response, nil);
            }else{
                completionHandler(nil, @"Something went wrong, sorry!!!");
            }
        }else{
            NSLog(@"Error: %@", error.debugDescription);
            completionHandler(nil, @"A problem occurred when trying to establish connection with server.");
        }
    }] resume];
}

@end
