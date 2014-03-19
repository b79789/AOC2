//
//  ViewController.h
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FactoryClass.h"

@interface ViewController : UIViewController
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegment;
@property (weak, nonatomic) IBOutlet UIButton *infobutton;
@property (weak, nonatomic) IBOutlet UIStepper *myStepper;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UILabel *myLabel1;
@property (weak, nonatomic) IBOutlet UILabel *myLabel2;
@property (weak, nonatomic) IBOutlet UILabel *myLabel3;
- (IBAction)mySegment:(id)sender;
- (IBAction)myStepper:(id)sender;
- (IBAction)myCalcAction:(id)sender;

@end
