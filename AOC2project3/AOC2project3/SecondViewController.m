//
//  SecondViewController.m
//  AOC2project3
//
//  Created by Brian Stacks on 3/16/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize myDatePicker,saveButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//save button action here
- (IBAction)saveAction:(id)sender {
    
    if (_addEvent.text && _addEvent.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Error"
                                                       message: @"Please put in an Event!"
                                                      delegate: self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"OK",nil];
        [alert show];
    }
     //get date picker data and save it into a string Also gets addevent textfield,text and set it to textView
    else if (myDatePicker != nil)
    {
  
        NSLog(@"Save Works!!");
        [self dismissViewControllerAnimated:YES completion:Nil];
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        [gregorian setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"EST"]];
        [df setDateFormat:@"MM/dd/yyyy hh:mm a"];
        //df.timeZone = ns;
        //df.dateStyle = NSDateFormatterLongStyle;
        NSString *newString = [NSString stringWithFormat:@"%@",[df stringFromDate:myDatePicker.date]];
        NSLog(@"%@",newString);
        [self.delegate userCreatedNewEvent:_addEvent.text];
        [self.delegate userCreatedNewEvent2:newString];
    }else{
        NSLog(@"Help Save is Broken!!");
    }
    
}
//Remove the keyboard on click
- (IBAction)removeKeyAction:(id)sender {
    
    NSLog(@"Keyboard remove Works!!");
    [self.addEvent resignFirstResponder];
}

-(IBAction)onClick
{
    if (myDatePicker != nil)
    {
        NSDate *today = [[NSDate alloc] init];
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        [gregorian setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"EST"]];
        NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
        [offsetComponents setMonth:0];
        NSDate *minDate = [gregorian dateByAddingComponents:offsetComponents toDate:today options:0];
        [myDatePicker setMinimumDate: minDate];
        NSDate *date = myDatePicker.date;
        NSLog(@"date=%@",[date description]);
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        df.dateStyle = NSDateFormatterMediumStyle;
    }
}


@end
