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
    mycarFactory =[[carFactory alloc]init];
    if (mycarFactory != nil)
    {
        //called class into action
    }
    chevyCar *firstCar = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
    [firstCar setTimePerQuarterMile:5];
    NSLog(@" This where we are at %@",firstCar.carModel);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
