//
//  ViewController.m
//  AndOr
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
    
    /* OR jämförelse */
    NSString *make = @"Volvo";
    NSString *model = @"V90";
    
    if([make isEqualToString:@"Volvo"] || [make isEqualToString:@"Audi"]){
        
        self.label1.text = @"En bra bil";
        
    }else{
        
        self.label1.text = @"En hyfsad bil";
        
    }
    
    /* AND jämförelse */
    if([make isEqualToString:@"Volvo"] && [model isEqualToString:@"V90"]){
        self.label2.text = @"Märke och model matchar";
    }else {
        self.label2.text = @"Märke och model matchar ej";
    }
    
}


@end
