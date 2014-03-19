//
//  SecondViewController.h
//  AOC2project4
//
//  Created by Brian Stacks on 3/18/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"



@interface SecondViewController : UIViewController
{
    
    __weak IBOutlet UILabel *swipeLabel2;
    __weak IBOutlet UIDatePicker *myDatePicker;
    __weak IBOutlet UIButton *closeKeyboardButton;
    UISwipeGestureRecognizer *leftSwipe;
}
@property (strong, nonatomic)UITextField *myTextField;
- (IBAction)removeKeyAction:(id)sender;

@end
