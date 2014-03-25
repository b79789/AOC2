//
//  ViewController.m
//  AOC2project4
//
//  Created by Brian Stacks on 3/18/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTextView;


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
        if ([identifier isEqualToString:@"fromFirstSegue"]) {
        
        return YES;
    }
    return NO;
}

// Right swipe to segue to the next view
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        
        // named viewController tb and instantiate it and perform the segue named fromFirst Sehgue
        
        UIViewController *tb = [[SecondViewController alloc] init];
        tb = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self.navigationController pushViewController:tb animated:YES];
        NSLog(@"Went from first view to second view");
        [self performSegueWithIdentifier: @"fromFirstSegue" sender: self];
    }else{
        NSLog(@"This is Broken!!");
    }
}

- (void)viewDidLoad
{
    
    //on viewDidLoad initiate the eventList as a mutable string
    eventList = [[NSMutableString alloc]init];
    
    [super viewDidLoad];
	//Added the right swipe to the view and to the label with the right swipe taking
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel1 addGestureRecognizer:rightSwipe];
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"Event List:"];
    [eventList appendString:loadString];
    myTextView.text = eventList;
    
}


// this is action done when swipping back and saving data

-(IBAction)done:(UIStoryboardSegue*)segue
{
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"MM/dd/yyyy hh:mm a"];
    //NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    //NSString *loadString = [defaults objectForKey:@"Event List:"];
    NSLog(@"todays date is %@",[DateFormatter stringFromDate:[NSDate date]]);
    SecondViewController *vc2 = segue.sourceViewController;
    [eventList appendString:vc2.myAddEventString];
    [eventList appendString:@"\n"];
    [eventList appendString:(vc2.myNewString == nil ? [DateFormatter stringFromDate:[NSDate date]] : vc2.myNewString)];
    [eventList appendString:@"\n\n"];
    //NSString *myListString = [NSString stringWithString:eventList];
    myTextView.text = eventList;
    
    //self.myTextView.text = self.myTextField.text ;
}

// saving user defaults /settings

-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *mySavedEventList =[NSString stringWithString:eventList];
        //mySavedEventList = myTextView.text;
        [defaults setObject:mySavedEventList forKey:@"Event List:"];
        [defaults synchronize];
        NSLog(@"%@",mySavedEventList);
   }else
    {
        NSLog(@"Save Button is not working");
    }
}

// clear save data and clear textview

-(IBAction)clearData:(id)sender
{
    [eventList setString:@""];
    myTextView.text =@"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
