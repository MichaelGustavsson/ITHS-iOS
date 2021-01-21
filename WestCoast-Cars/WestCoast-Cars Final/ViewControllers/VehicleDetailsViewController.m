//
//  VehicleDetailsViewController.m
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-21.
//

#import "VehicleDetailsViewController.h"

@interface VehicleDetailsViewController ()

@end

@implementation VehicleDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Create a new image from url...
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.vehicleModel.imageUrl]]];
    
    //Populate our user interface with data from our model...
    self.detailImage.image = image;
    self.titleLabel.text = [NSString stringWithFormat:@"%@ %@", self.vehicleModel.make, self.vehicleModel.model];
    self.regNoLabel.text = self.vehicleModel.registrationNumber;
    self.makeLabel.text = self.vehicleModel.make;
    self.modelLabel.text = self.vehicleModel.model;
    self.modelYearLabel.text = self.vehicleModel.modelYear;
}


@end
