//
//  ViewController.m
//  ForLoop
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
    
    for (int value = 1; value < 20; value++) {
        NSLog(@"%i", value);
    }
}


@end
