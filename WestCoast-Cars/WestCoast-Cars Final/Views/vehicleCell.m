//
//  vehicleCell.m
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-20.
//

#import "vehicleCell.h"

@implementation vehicleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //Set up our custom cell with some beutiful settings...
    self.layer.cornerRadius = 2.0;
    self.layer.shadowColor = [UIColor colorWithRed:157.0 /255.0 green:157.0 / 255.0 blue:157.0 / 255.0 alpha:0.8].CGColor;
    self.layer.shadowOpacity = 0.8;
    self.layer.shadowRadius = 5.0;
    self.layer.shadowOffset = CGSizeMake(0.0, 2.0);
    
}

-(void) updateTableUI:(nonnull Vehicle *)vehicle{
    
    //Set titel.
    self.titleLabel.text = [NSString stringWithFormat:@"%@ %@", vehicle.make, vehicle.model];
    //Set model year.
    self.modelYearLabel.text = vehicle.modelYear;
    //Create image.
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:vehicle.imageUrl]]];
    
    //Set image to thumbnail property...
    self.imageThumbnail.image = image;
}
@end
