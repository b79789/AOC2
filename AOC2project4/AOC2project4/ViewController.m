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

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
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
    eventList = [[NSMutableString alloc]init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    /*CALayer *btnLayer = [roundedSaveButton layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];*/
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel1 addGestureRecognizer:rightSwipe];
    [[NSUserDefaults standardUserDefaults] setObject:eventList forKey:@""];
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    
}

-(IBAction)done:(UIStoryboardSegue*)segue
{
    SecondViewController *vc2 = segue.sourceViewController;
    [eventList appendString:vc2.myAddEventString];
    [eventList appendString:@"\n"];
    [eventList appendString:(vc2.myNewString == nil ? @"No date Selected!" : vc2.myNewString)];
    [eventList appendString:@"\n\n"];
    myTextView.text = eventList;
    
    //self.myTextView.text = self.myTextField.text ;
}

-(IBAction)onClick:(id)sender
{
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *mySavedEventList =[NSString stringWithString:eventList];
        myTextView.text = mySavedEventList;
        NSLog(@"%@",mySavedEventList);
        
        
        
        
    }else
    {
        NSLog(@"veiwDidAppear is not working");
    }
    
    /*
    NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        
        [defaults setObject:myTextView.text forKey:@"Event List:"];
        [defaults synchronize];
        NSLog(@"onClick worked");
    }*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
