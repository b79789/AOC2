//
//  ViewController.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "ViewController.h"
#import "baseCar.h"
#import "carFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    mycarFactory =[[carFactory alloc]init];
    if (mycarFactory != nil)
    {
        //called class into action
    }
    
    myBaseCar = [[baseCar alloc]init];
    if (myBaseCar != nil) {
        //called class into action
        
    }
    
    myChevy = [[chevyCar alloc]init];
    if (myChevy != nil) {
        //called class into action
        
    }
    myFord = [[fordCar alloc]init];
    if (myFord != nil) {
        //called class into action
        
    }
    myChrysler = [[chryslerCar alloc]init];
    if (myChrysler != nil) {
        //called class into action
    }
    
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 100)];
    myTextLabel.text = [myBaseCar myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 300, 100)];
    myTextLabel.text = [myChevy myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 300, 100)];
    myTextLabel.text = [myFord myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 100)];
    myTextLabel.text = [myChrysler myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    
    
    chevyCar *firstCar = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
    [firstCar setTimePerQuarterMile:5];
    NSLog(@" This where we are at %@",firstCar.carModel);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
