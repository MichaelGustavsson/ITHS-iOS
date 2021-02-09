//
//  Dog.h
//  Polymorphism
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@interface Dog : Animal
@property (weak, nonatomic) NSString *favouriteToy;

@end
