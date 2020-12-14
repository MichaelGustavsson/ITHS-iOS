//
//  DetailsViewController.h
//  WestCoast Cars
//
//  Created by Michael Gustavsson on 2020-12-14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *DetailsImageView;

@property (strong, nonatomic) NSString *detail;

@end

NS_ASSUME_NONNULL_END
