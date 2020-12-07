//
//  ViewController.h
//  FloatsDoubles
//
//  Created by Michael Gustavsson on 2020-12-07.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    float price;
    float weight;
    float vat;
}

@property (weak, nonatomic) IBOutlet UILabel *label1;

@end

