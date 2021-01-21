//
//  VehicleDetailsViewController.h
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-21.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"
NS_ASSUME_NONNULL_BEGIN

@interface VehicleDetailsViewController : UIViewController

@property (strong, nonatomic) Vehicle *vehicleModel;

@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *regNoLabel;
@property (weak, nonatomic) IBOutlet UILabel *makeLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelYearLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;

@end

NS_ASSUME_NONNULL_END
