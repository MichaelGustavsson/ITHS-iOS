//
//  ViewController.m
//  boolean
//
//  Created by Michael Gustavsson on 2020-12-07.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    boolean1 = NO;
    boolean2 = true;
    
    self.onOff.on = boolean1;
    self.button.enabled = boolean2;
}


@end
