//
//  ViewController.h
//  TextManipulating
//
//  Created by Michael Gustavsson on 2020-12-12.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)myButton:(id)sender;
- (IBAction)fontButton:(id)sender;
- (IBAction)backgroundButton:(id)sender;
- (IBAction)shadowButton:(id)sender;

@end

