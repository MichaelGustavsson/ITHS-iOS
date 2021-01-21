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
    
    //Singelton instantiation...
    static HttpService *sharedInstance = nil;
    
    //This code block makes sure that only one thread at a time can go in...
    @synchronized (self) {
        //Check if the instance already is created...
        if(sharedInstance == nil){
            //Otherwise create it
            sharedInstance = [[self alloc] init];
        }
        
        //And finally return the instance...
        return sharedInstance;
    }
}

-(void)getVehicles:(nullable onComplete)completionHandler{
    //Create a NSURL object...
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_VEHICLES]];
    //Get a NSURL session...
    NSURLSession *session = [NSURLSession sharedSession];
    
    //Call the Rest API...
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //Check if we received any data...
        if(data != nil){
            NSError *err;
            
            //We need to convert the data in the response to a json representation...
            NSArray *response = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if(err == nil){
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
