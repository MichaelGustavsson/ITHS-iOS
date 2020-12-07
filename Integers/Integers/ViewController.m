//
//  ViewController.m
//  Integers
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
    
    //Initiera de global variablerna
    value = 250000;
    cost = 35000;
    
    //Beräkna slut erbjudandet
    int finalValue = value - cost;
    
    //Ett label objekt kan endast hantera strängar i sin text egenskap.
    //Därför måste vi konvertera heltalet till sträng
    //ett enkelt sätt att göra det på är att använda stringWithFormat.
    self.label.text = [NSString stringWithFormat:@"%d", finalValue];
}


@end
