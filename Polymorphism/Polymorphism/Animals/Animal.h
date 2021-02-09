//
//  Animal.h
//  Polymorphism
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
//Skapa två egenskaper och en metod...
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *address;
- (void)makeSound;

@end
