//
//  ViewController.m
//  WestCoast-Cars
//
//  Created by Michael Gustavsson on 2021-01-14.
//

#import "ViewController.h"
#import "HttpService.h"
#import "vehicleCell.h"
#import "Vehicle.h"
#import "VehicleDetailsViewController.h"

@interface ViewController ()
@property (nonatomic, strong)NSArray *vehicleList;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) UIRefreshControl *refreshControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Remove titel on navigation page...
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
    //Instantiate an array to hold our vehicles...
    self.vehicleList = [[NSArray alloc] init];
    
    //Setup refreshControl...
    self.refreshControl = [[UIRefreshControl alloc] init];
    
    //Change color...
    [self.refreshControl setTintColor:[UIColor whiteColor]];
    
    //Connect refreshControl to target getVehicles...
    [self.refreshControl addTarget:self action:@selector(getVehicles) forControlEvents:UIControlEventValueChanged];
    
    //Check support for UIRefreshControl...
    if(@available(iOS 10.0, *)){
        //Only supported by iOS 10+...
        self.tableView.refreshControl = self.refreshControl;
    }else{
        //iOS < 10
        [self.tableView addSubview:self.refreshControl];
    }
    
    //Connect the table view to the view controller...
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    //Grab the vehicles...
    [self getVehicles];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Make sure that right segue is connected...
    if([[segue identifier] isEqualToString:@"showDetails"]){
        //Grab the view controller to use
        VehicleDetailsViewController *detailView = [segue destinationViewController];
        
        //Get the selected rows index...
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        
        //Get the correct object from the array...
        Vehicle *vehicle = [self.vehicleList objectAtIndex:path.row];
        
        //Send the vehicle to the VehicleDetailsViewController by setting its vehicleModel property
        //to the selected vehicle object...
        detailView.vehicleModel = vehicle;
    }
}

-(void) getVehicles{
    
    //Call into the HttpService...
    [[HttpService httpInstance] getVehicles:^(NSArray * _Nullable data, NSString * _Nullable errMessage) {
        
        //Check if we got data...
        if(data){
            //Create a mutable array...
            NSMutableArray *vehicles = [[NSMutableArray alloc] init];
            
            //Iterate through the data as a dictionary...
            for(NSDictionary *v in data){
                //Create an vehicle object...
                Vehicle *vehicle = [[Vehicle alloc]init];
                
                //Move the dictionary data over to the objects properties...
                vehicle.imageUrl = [v objectForKey:@"imageUrl"];
                vehicle.make = [v objectForKey:@"make"];
                vehicle.model = [v objectForKey:@"model"];
                vehicle.modelYear = [v objectForKey:@"modelYear"];
                vehicle.registrationNumber = [v objectForKey:@"registrationNo"];
                
                //Add the new vehicle object to our vehicles mutable array...
                [vehicles addObject:vehicle];
            }
            
            //Put the mutable array's data into our ordinary array self.vehicleList...
            self.vehicleList = vehicles;
            
            //And finally call updateUI to update the table...
            [self updateUI];
            
        }else{
            //Display error message to user...
        }
    }];
}

 -(void) updateUI{
     //Due to the fact that the getVehicles method runs on a background thread.
     //and the user interface runs on the main thread we need to shift the data from
     //the background thread to the main thread...
     dispatch_async(dispatch_get_main_queue(), ^{
         //Don't forget to stop refreshing the page...
         [self.refreshControl endRefreshing];
         //Reload the tableView data...
         [self.tableView reloadData];
     });
}
     
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    //Create a new vehicle cell by looking for a reusable row already in memory...
    vehicleCell *cell = (vehicleCell *)[tableView dequeueReusableCellWithIdentifier:@"main"];
    
    //If the cell doesn't exist, create a new cell...
    if(!cell){
        cell = [[vehicleCell alloc] init];
    }
    //Return the new cell...
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    //Get the the vehicle object stored in the row...
    Vehicle *vehicle = [self.vehicleList objectAtIndex:indexPath.row];
    
    //Convert the cell to a vehicle cell..
    vehicleCell *vehCell = (vehicleCell *)cell;
    
    //Update the cell with data...
    [vehCell updateTableUI:vehicle];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //We only need one section in this case...
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //We need to know how many rows we need to create...
    return self.vehicleList.count;
}




































@end
