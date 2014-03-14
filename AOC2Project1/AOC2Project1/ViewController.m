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
#import "fordCar.h"
#import "chryslerCar.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize myCalc,newTime;

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
    //howManyAnsewrLabel.text = [NSString stringWithFormat:@"%d",myValue];
}

- (IBAction)myCalculate:(id)sender
{
    myCalc = (newTime*.25);
    if(myCalcButtonOut.selected){
        myTextField.text = [NSString stringWithFormat:@"New Time = %d",myCalc];
    }else{
        //do nothing
        NSLog(@"Help Me!!");
    }
}

- (void) flipButton:(UIButton*) button {
        if(button.selected)
            [button setSelected:NO];
        else
            [button setSelected:YES];
        
}

- (IBAction)calc:(id)sender
{
    
    UIButton *touchedButton = (UIButton*) sender;
    int myValue = (2)*(1);

    //select the touched button
    [self performSelector:@selector(flipButton:) withObject:sender afterDelay:0.0];
    
    if(currentlySelectedButton != nil) { //check to see if a button is selected...
        [self flipButton:currentlySelectedButton];
        
        currentlySelectedButton = touchedButton;
    }//then check to see whitch button is selected  and do something 
    else if (chevyButton.selected == YES) {
        chevyCar *chevy = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
        
        [chevy setCarColor:@"Red"];
        [chevy setDistanceTraveled:6000];
        [chevy setCarMileTime:5];
        [chevy calculateMileTime];
        chevyButton.selected = !chevyButton.selected;
        colorLabel.text = [NSString stringWithFormat:@"Red"];
        topSpeedLabel.text = [NSString stringWithFormat:@"226"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"%d",([chevy calculateMileTime])*(myValue)];
        
    }else if (fordButton.selected == YES){
        fordCar *ford = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
        [ford setCarColor:@"Blue"];
        fordButton.selected = !fordButton.selected;
        colorLabel.text =[NSString stringWithFormat:@"Blue"];
        topSpeedLabel.text = [NSString stringWithFormat:@"245"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Mustang"];
    }else if (dodgeButton.selected == YES){
        chryslerCar *dodge = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
        [dodge setCarColor:@"Black"];
        dodgeButton.selected = !dodgeButton.selected;
        colorLabel.text = [NSString stringWithFormat:@"Black"];
        topSpeedLabel.text = [NSString stringWithFormat:@"279"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"Viper"];
    }else{
        //do nothing
        NSLog(@" Broken!!!");
    }
}

-(IBAction)goToWebSite:(UIStoryboardSegue*)segue{
    
    
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/bstacks78"]];
    
}



    


@end
