//
//  ViewController.m
//  FloatsDoubles
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
    
    //Initiera våra variabler...
    price = 100.50;
    weight = 0.1685;
    vat = 1.25;
    
    //Deklarera en ny variabel av typen float
    //Initiera den genom att multiplicera samman våra variabler
    float finalCost = price * weight * vat;
    
    //Konvertera värdet till en sträng med 2 decimaler och
    //placera värdet i vår etiketts text egenskap   
    self.label1.text = [NSString stringWithFormat:@"%.2f", finalCost];
}


@end
