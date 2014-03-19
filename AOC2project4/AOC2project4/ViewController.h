//
//  ViewController.h
//  AOC2project4
//
//  Created by Brian Stacks on 3/18/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController
{
    
    __weak IBOutlet UILabel *swipeLabel1;
    
    __weak IBOutlet UIButton *roundedSaveButton;
    UISwipeGestureRecognizer *rightSwipe;
    
}

@property __weak IBOutlet UITextView *myTextView;
@end
