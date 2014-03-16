//
//  ViewController.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "carFactory.h"
#import "baseCar.h"
#import "carFactory.h"
#import "chevyCar.h"
#import "fordCar.h"
#import "chryslerCar.h"

@interface ViewController : UIViewController
{
    
    __weak IBOutlet UIStepper *myStepper;
    __weak IBOutlet UITextField *myTextField;
    __weak IBOutlet UILabel *howManyAnsewrLabel;
    __weak IBOutlet UIButton *chevyButton;
    __weak IBOutlet UIButton *fordButton;
    __weak IBOutlet UIButton *dodgeButton;
    __weak IBOutlet UILabel *colorLabel;
    __weak IBOutlet UILabel *topSpeedLabel;
    __weak IBOutlet UIButton *myCalcButtonOut;
    __weak IBOutlet UIView *infoButtton;
    __weak IBOutlet UIButton *currentlySelectedButton;
}
@property int myCalc;
@property int newTime;


- (IBAction)mySegmentedAction:(id)sender;
- (IBAction)onChange:(id)sender;
- (IBAction)myCalculate:(id)sender;
- (IBAction)calc:(id)sender;
-(IBAction)goToWebSite:(id)sender;

@end
