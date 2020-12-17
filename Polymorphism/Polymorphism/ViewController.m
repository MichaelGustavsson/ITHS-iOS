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
    //Ett av typen Dog
    //Ett av typen Cat
    
    Dog *dog = [[Dog alloc] init];
    Cat *cat = [[Cat alloc] init];
    
    //Vad vi nu kan göra är att sätta en Animal referens till objektet dog
    Animal *animal = dog;
    [animal makeSound]; //Anropa makeSound metoden.
    
    //Peka nu om Animal referensen till cat objektet
    animal = cat;
    [animal makeSound];//Anropa metoden makeSound
    
    /*
     Slutsats: beroende på objektets typ i referensen, så kommer rätt metod att anropas.
     Arv gör det möjligt att använda en föräldra referens för att få åtkomst till barnens metoder.
     Vilket är vad Polymorfism handlar om...
    */
}
@end
