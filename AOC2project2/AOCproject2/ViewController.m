//
//  ViewController.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "ViewController.h"
#import "BaseClass.h"
#import "FactoryClass.h"


@interface ViewController ()

@end


@implementation ViewController
@synthesize mySegment,myStepper;

- (void)viewDidLoad
{
    
}

- (IBAction)mySegment:(id)sender
{
    if (mySegment.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor colorWithWhite:0.702 alpha:1.000];
        NSLog(@"index 0");
    }else if (mySegment.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor colorWithRed:0.581 green:0.730 blue:0.702 alpha:1.000];
        NSLog(@"index 1");
    }else if (mySegment.selectedSegmentIndex == 2){
        self.view.backgroundColor = [UIColor colorWithRed:0.586 green:0.698 blue:0.801 alpha:1.000];
        NSLog(@"index 2");
    }else{
        NSLog(@"No segmented control selected");
    }
}

- (IBAction)myStepper:(id)sender
{
    int stepValue = myStepper.value;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myStepperAction:(id)sender {
}

- (IBAction)myStepAction:(id)sender {
}

- (IBAction)myCalcAction:(id)sender {
}
@end
