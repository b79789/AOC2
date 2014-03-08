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
    myTextLabel.text = [myChevy myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor greenColor];
    myTextLabel.backgroundColor = [UIColor redColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 300, 100)];
    myTextLabel.text = [myFord myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor whiteColor];
    myTextLabel.backgroundColor = [UIColor blackColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 150, 300, 100)];
    myTextLabel.text = [myChrysler myText];
    myTextLabel.textAlignment = NSTextAlignmentCenter;
    myTextLabel.textColor = [UIColor yellowColor];
    myTextLabel.backgroundColor = [UIColor blueColor];
    myTextLabel.numberOfLines =0;
    [myTextLabel sizeToFit];
    [self.view addSubview:myTextLabel];
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 300, 100)];
    myCalcLabel.text = [myChevy myText2];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor yellowColor];
    myCalcLabel.backgroundColor = [UIColor purpleColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 250, 300, 100)];
    myCalcLabel.text = [myFord myText2];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor whiteColor];
    myCalcLabel.backgroundColor = [UIColor grayColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    myCalcLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 300, 300, 100)];
    myCalcLabel.text = [myChrysler myText2];
    myCalcLabel.textAlignment = NSTextAlignmentCenter;
    myCalcLabel.textColor = [UIColor greenColor];
    myCalcLabel.backgroundColor = [UIColor orangeColor];
    myCalcLabel.numberOfLines =0;
    [myCalcLabel sizeToFit];
    [self.view addSubview:myCalcLabel];
    
    chevyCar *firstCar = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
    [firstCar setTimePerQuarterMile:5];
    NSLog(@" This where we are at %@",firstCar.carModel);
    
    chryslerCar *aChrysler = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
    [aChrysler setTimePerQuarterMile:9];
    NSLog(@" This where we are at %@",firstCar.carModel);
    //NSString *chryslerCalc = [aChrysler calculateMileTime];
    //NSString *chryslerText = [NSString stringWithFormat:@"This Chrysler model is a %@.", chryslerCalc];
    //myCalcLabel.text = chryslerText;
    
    fordCar *aFord = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
    [aFord setTimePerQuarterMile:23];
    NSLog(@" This where we are at %@",firstCar.carModel);
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
