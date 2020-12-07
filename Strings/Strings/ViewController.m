//
//  ViewController.m
//  Strings
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
    
    //Initiera global variabel...
    make = @"Volvo";
    
    //Skapa en lokal variabel och initiera den...
    NSString *model = @"V60";
    
    //Använd stringWithFormat för att slå samman strängarna.
    self.label1.text = [NSString stringWithFormat:@"%@ %@", make, model];
}


@end
