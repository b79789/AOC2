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
    
    // initiated the chevy car class
    chevyCar *firstCar = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
    [firstCar setTimePerQuarterMile:5];
    [firstCar setCarModel:@"Chevy"];
    [firstCar setCarColor:@"Red"];
    [firstCar setCarMileTime:125];
    [firstCar setDistanceTraveled:121];
    //set text to UiText label
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 100)];
    myCalcLabel.text = [NSString stringWithFormat:@"The model of the car is %@ ",firstCar.carModel];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor purpleColor];
    myCalcLabel.backgroundColor = [UIColor orangeColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    //set text to UiText label
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 300, 100)];
    myTextLabel.text = [NSString stringWithFormat:@" The quartermile time equals %d ",([firstCar carMileTime]) / (4)];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor yellowColor];
    myTextLabel.backgroundColor = [UIColor redColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    NSLog(@" This where we are at %@",firstCar.carModel);
    
    
    // initiated the Chrysler car class
    chryslerCar *aChrysler = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
    [aChrysler setMyCarType:2];
    [aChrysler setCarModel:@"Chylsler Viper"];
    [aChrysler setCarColor:@"Green"];
    [aChrysler setCarMileTime:101];
    [aChrysler setCarDistance:2200];
    //set text to UiText label
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 300, 100)];
    myCalcLabel.text = [NSString stringWithFormat:@"The model of the car is %@ ",aChrysler.carModel];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor whiteColor];
    myCalcLabel.backgroundColor = [UIColor brownColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    //set text to UiText label
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 100)];
    myTextLabel.text = [NSString stringWithFormat:@"The calculated mile time is %d ",([aChrysler calculateMileTime]) * (3)];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor blackColor];
    myTextLabel.backgroundColor = [UIColor grayColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    NSLog(@" This where we are at %@",aChrysler.carModel);
    //NSString *chryslerCalc = [aChrysler calculateMileTime];
    //NSString *chryslerText = [NSString stringWithFormat:@"This Chrysler model is a %@.", chryslerCalc];
    //myCalcLabel.text = chryslerText;
    
    
    // initiated the Ford car class
    fordCar *aFord = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
    [aFord setTimePerQuarterMile:23];
    [aFord setCarModel:@"Ford Mustang"];
    [aFord setCarDistance:2003];
    [aFord setCarMileTime:545];
    //set text to UiText label
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 250, 300, 100)];
    myCalcLabel.text = [NSString stringWithFormat:@"The model of the car is %@ ",aFord.carModel];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor whiteColor];
    myCalcLabel.backgroundColor = [UIColor purpleColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    //set text to UiText label
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 300, 300, 100)];
    myTextLabel.text = [NSString stringWithFormat:@" The car price is  $%d ",([aFord carMileTime]) * (9)];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor blueColor];
    myTextLabel.backgroundColor = [UIColor redColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    NSLog(@" This where we are at %@",aFord.carModel);
    //NSString *fordCalc = [aFord calculateMileTime];
    //NSString *fordText = [NSString stringWithFormat:@"This Ford model is a %@.", fordCalc];
    //myCalcLabel.text = fordText;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
