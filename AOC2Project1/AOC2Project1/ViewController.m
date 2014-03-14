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
#import "chevyCar.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)mySegmentedAction:(id)sender
{
    UISegmentedControl *segmentControl=(UISegmentedControl *)sender;
    if (segmentControl.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor redColor];
    }else if (segmentControl.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor yellowColor];
    }else if (segmentControl.selectedSegmentIndex == 2){
        self.view.backgroundColor = [UIColor purpleColor];

    }else{
        //do nothing
    }

}

- (IBAction)onChange:(id)sender
{
    int myValue = myStepper.value;
    myTextField.text = [NSString stringWithFormat:@" You want %d",myValue];
    howManyAnsewrLabel.text = [NSString stringWithFormat:@"%d",myValue];
}

- (IBAction)myCalculate:(id)sender
{
    if (chevyButton.isSelected == YES) {
        chevyCar *chevy = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
        
        [chevy setCarColor:@"Red"];
        colorLabel.text = [NSString stringWithFormat:@"Red"];
        topSpeedLabel.text = [NSString stringWithFormat:@"226"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Camaro"];

    }else if (fordButton.isSelected == YES){
        fordCar *ford = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
        [ford setCarColor:@"Blue"];
        colorLabel.text =[NSString stringWithFormat:@"Blue"];
        topSpeedLabel.text = [NSString stringWithFormat:@"245"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Mustang"];
    }else if (dodgeButton.isSelected == YES){
        chryslerCar *dodge = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
        [dodge setCarColor:@"Black"];
        colorLabel.text = [NSString stringWithFormat:@"Black"];
        topSpeedLabel.text = [NSString stringWithFormat:@"279"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Viper"];
    }else{
        //do nothing
        NSLog(@" Broken!!!");
    }
}

- (IBAction)calc:(id)sender
{
    if (chevyButton.isSelected == YES) {
        chevyCar *chevy = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
        
        [chevy setCarColor:@"Red"];
        colorLabel.text = [NSString stringWithFormat:@"Red"];
        topSpeedLabel.text = [NSString stringWithFormat:@"226"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Camaro"];
        
    }else if (fordButton.isSelected == YES){
        fordCar *ford = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
        [ford setCarColor:@"Blue"];
        colorLabel.text =[NSString stringWithFormat:@"Blue"];
        topSpeedLabel.text = [NSString stringWithFormat:@"245"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Mustang"];
    }else if (dodgeButton.isSelected == YES){
        chryslerCar *dodge = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
        [dodge setCarColor:@"Black"];
        colorLabel.text = [NSString stringWithFormat:@"Black"];
        topSpeedLabel.text = [NSString stringWithFormat:@"279"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Viper"];
    }else{
        //do nothing
        NSLog(@" Broken!!!");
    }
}

@end
