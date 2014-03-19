//
//  SecondViewController.h
//  AOC2project3
//
//  Created by Brian Stacks on 3/16/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>


//add nsobject called addEventDelegate
@protocol addEventDelegate<NSObject>

@required
-(void)userCreatedNewEvent:(NSString *)eventDescription;
-(void)userCreatedNewEvent2:(NSString *)eventDescription2;
@end


@interface SecondViewController : UIViewController
{
   
}
//This is the addEvent Delegate
@property id delegate;
//@property IBOutlet UITextField *eventDescriptionTextField;
@property (strong, nonatomic) IBOutlet UITextField *addEvent;
- (IBAction)saveAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *removeKeyboard;

@property (strong, nonatomic) IBOutlet UIButton *saveButton;

@property (strong, nonatomic) IBOutlet UILabel *samePageLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;


- (IBAction)removeKeyAction:(id)sender;

-(IBAction)onClick;

@end