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
    myStepper.value = 1;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Theme control
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
        //do nothing here
    }

}

// Stepper function

- (IBAction)onChange:(id)sender
{
    int myValue = myStepper.value;
    myTextField.text = [NSString stringWithFormat:@"You have selected %d",myValue];
    [myTextField resignFirstResponder];
    //howManyAnsewrLabel.text = [NSString stringWithFormat:@"%d",myValue];
}

// what happens when I hit calculate button

- (IBAction)myCalculate:(id)sender
{
    
    
    int myValue = myStepper.value;
    myCalc = (50000);
    if(chevyButton.selected == true)
    {
        
        chevyCar *chevy = (chevyCar*)[carFactory createNewCar:CreateChevroletType_Chevrolet];
        [chevy setCarPrice:12795];
        [chevy setCarModel:@"Camaro"];
        [chevy setCarColor:@"Red"];
        colorLabel.text = [NSString stringWithFormat:@"%@",chevy.carColor];
        topSpeedLabel.text = [NSString stringWithFormat:@"226"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"$%d",(chevy.carPrice)*(myValue)];
        NSLog(@"%d",(chevy.carPrice)*(myValue));
        
    }else if(fordButton.selected == true)
    {
        
        fordCar *ford = (fordCar*)[carFactory createNewCar:CreateFordType_Ford];
        [ford setCarColor:@"Blue"];
        [ford setCarPrice:11999];
        colorLabel.text = [NSString stringWithFormat:@"%@",ford.carColor];
        NSLog(@"THIS IS THE color: %@",ford.carColor);
        topSpeedLabel.text = [NSString stringWithFormat:@"245"];
        howManyAnsewrLabel.text =[NSString stringWithFormat:@"$%d",(ford.carPrice)*(myValue)];
        
    }else if (dodgeButton.selected == true)
    {
       
        chryslerCar *dodge = (chryslerCar*)[carFactory createNewCar:CreateChryslerType_Chrysler];
        [dodge setCarColor:@"Black"];
        [dodge setCarPrice:18599];
        [dodge setCarColor:@"Black"];
        colorLabel.text = [NSString stringWithFormat:@"Black"];
        topSpeedLabel.text = [NSString stringWithFormat:@"279"];
        howManyAnsewrLabel.text = [NSString stringWithFormat:@"$%d",(dodge.carPrice)*(myValue)];
        
    }else{
        //do nothing
        NSLog(@"Help Me!!");
    }
    
    
    
}

// helps with button switch when pressed

- (void) flipButton:(UIButton*) button {
        if(button.selected)
            [button setSelected:YES];
        else
            [button setSelected:NO];
        
}

//keeps the button selected

- (IBAction)calc:(id)sender
{

    UIButton *touchedButton = (UIButton*) sender;
    
    //select the touched button
    [self performSelector:@selector(flipButton:) withObject:sender afterDelay:0.0];
    
    if(currentlySelectedButton != nil) { //check to see if a button is selected...
        [self flipButton:currentlySelectedButton];
        
        currentlySelectedButton = touchedButton;
    }
    NSArray* buttons = [NSArray arrayWithObjects:chevyButton, fordButton, dodgeButton, nil];
    for (UIButton* button in buttons) {
        if (button == sender) {
            button.selected = YES;
        }
        else {
            button.selected = NO;
            button.highlighted = YES;
        }
    }
}



-(IBAction)goToWebSite:(UIStoryboardSegue*)segue{
    
    
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/bstacks78"]];
    
}

@end
