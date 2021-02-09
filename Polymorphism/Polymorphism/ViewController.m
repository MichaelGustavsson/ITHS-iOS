//
//  ViewController.m
//  Polymorphism
//
//  Created by Michael Gustavsson on 2020-12-17.
//

#import "ViewController.h"
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)button:(id)sender {
    //Skapa två objekt
    //Ett av typen Dog och ett av type Animal
    Dog *dog = [[Dog alloc] init];
    Animal *animal = [[Animal alloc] init];
        
    //Sätt värden på animal objektet
    animal.name = @"Fido";
    animal.address = @"Storgatan 1";
    
    NSLog(@"animal information: %@, %@", animal.name, animal.address);
    
    //Sätt egenskaper på dog objektet observera att vi kan komma åt de ärvda egenskaperna ifrån Animal också...
    dog.favouriteToy = @"rubber duck";
    dog.name = @"Liza";
    dog.address = @"Korsningen";
    
    //Skapa en array av typen Animals och lägg in ett dog object
    //och ett animal object
    NSArray *animals = [NSArray arrayWithObjects:dog,animal, nil];
    
    NSLog(@"The dog information %@, %@, %@", dog.name, dog.address, dog.favouriteToy);
    
    for (Animal *item in animals) {
        //Kontrollera om item är av typen Dog
        if([item isKindOfClass:[Dog class]]){
            //I så fall gör en Downcast till ett Dog objekt.
            Dog *d = (Dog *)item;
            NSLog(@"It is a dog! my favourite toy is: %@", d.favouriteToy);
        }
        NSLog(@"%@", [item class]);
        NSLog(@"%@", item.name);
    }
}
@end
