//
//  ViewController.m
//  Functions
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import "ViewController.h"

@interface ViewController ()
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self doSomething];
    
    int result = [self squareANumber:3];
    NSLog(@"%d", result);
    
    int sum = [self sum:4 secondArg:2];
    NSLog(@"%d", sum);
    
    NSString *message = [self sayHello];
    NSLog(@"%@", message);
    
    int value = [ViewController subtract:10 secondArg:8];
    NSLog(@"%d", value);
    
}

- (void)doSomething{
    NSLog(@"I am doing something");
}

- (int)squareANumber:(int)arg1{
    return arg1 * arg1;
}

- (int)sum:(int)arg1 secondArg:(int)arg2{
    return arg1 + arg2;
}

- (NSString *)sayHello{
    return @"Hello Michael";
}

+ (int)subtract:(int)arg1 secondArg:(int)arg2{
    return arg1 - arg2;
}
@end
