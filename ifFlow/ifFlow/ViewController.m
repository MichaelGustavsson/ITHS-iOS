//
//  ViewController.m
//  ifFlow
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
    
    /* If och Else uttryck */
    BOOL state = true;
    
    if(state == true){
        self.label1.text = @"You are welcome";
    }else {
        self.label1.text = @"You are not welcome";
    }
    
    /* Else If uttryck */
    NSString *model = @"Amazon";
    
    if([model isEqualToString:@"V60"]){
        self.label2.text = @"Fin bil";
    } else if([model isEqualToString:@"V90"]){
        self.label2.text = @"Jättefin bil";
    } else if ([model isEqualToString:@"V40"]){
        
    } else {
        self.label2.text = @"Inte så fin bil";
    }
}

- (void)demo{
    
}


@end
