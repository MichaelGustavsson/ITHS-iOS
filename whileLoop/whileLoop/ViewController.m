//
//  ViewController.m
//  whileLoop
//
//  Created by Michael Gustavsson on 2020-12-08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int value = 0;
    
    while (value < 10) {
        value++;
        NSLog(@"%i", value);
    }
}


@end
