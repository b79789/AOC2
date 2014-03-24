//
//  SecondViewController.m
//  AOC2project4
//
//  Created by Brian Stacks on 3/18/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"backToFirst"]) {
        //SecondViewController *vc2 = (SecondViewController *)segue.destinationViewController;
        //vc2.myTextField.text = myTextView.text;
        _myAddEventString = myTextField.text;
        
        NSLog(@"my addeventstring = %@",_myAddEventString);
        
    }else
    {
        NSLog(@"help segue1 is broke");
    }
}
-(void)onSwipe2:(UISwipeGestureRecognizer*)recognizer
{
    if (myTextField.text && myTextField.text.length == 0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Error"
                                                       message: @"Please put in an Event!"
                                                      delegate: self
                                             cancelButtonTitle:@"Cancel"
                                             otherButtonTitles:@"OK",nil];
        [alert show];
    }else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        UIViewController *tb2 = [[ViewController alloc] init];
        tb2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        [self.navigationController pushViewController: tb2 animated:YES];
        [self performSegueWithIdentifier: @"backToFirst" sender: self];
        
        //[self dismissViewControllerAnimated:YES completion:Nil];
    }else{
        NSLog(@"left swipe broke");
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    leftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe2:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel2 addGestureRecognizer:leftSwipe];
}

- (IBAction)removeKeyAction:(id)sender {
    
    NSLog(@"Keyboard remove Works!!");
    [self->myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)onClick2
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
            [df setDateFormat:@"MM/dd/yyyy hh:mm a"];
            //df.timeZone = ns;
            //df.dateStyle = NSDateFormatterLongStyle;
            _myNewString = [NSString stringWithFormat:@"%@",[df stringFromDate:myDatePicker.date]];
            NSLog(@"%@",_myNewString);
        
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
