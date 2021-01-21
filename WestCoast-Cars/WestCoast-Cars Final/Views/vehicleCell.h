//
//  vehicleCell.h
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-20.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"

NS_ASSUME_NONNULL_BEGIN

@interface vehicleCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelYearLabel;
@property (weak, nonatomic) IBOutlet UIView *cellView;

-(void) updateTableUI: (nonnull Vehicle *)vehicle;

@end

NS_ASSUME_NONNULL_END
