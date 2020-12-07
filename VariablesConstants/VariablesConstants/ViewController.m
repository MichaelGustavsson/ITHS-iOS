//
//  ViewController.m
//  VariablesConstants
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
    
    //Initiera/tilldela de "global variablerna" värden...
    Make = @"Volvo";
    Model = @"V40";
    
    //Skapa och initiera en variabel vars livslängd endast är
    //i denna funktion...
    NSString *transmission = @"Automatic";
    
    //En variabel är möjlig att ominitiera... 
    transmission = @"Manual";
    
    //Deklarera en sträng konstant och samtidigt initiera den...
    NSString * const URL = @"https://web/method";
    
    //Deklarera en heltals konstant...
    const int maxMileage = 50000;
}


@end
