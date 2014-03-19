//
//  ViewController.m
//  AOC2project3
//
//  Created by Brian Stacks on 3/16/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
// brings event into doc listOfEvents
@synthesize listOfEvents;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController *secondVC = (SecondViewController *)segue.destinationViewController;
    secondVC.delegate = self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)userCreatedNewEvent:(NSString *)eventDescription
{
    //list the new events to with format of Event
    listOfEvents.text = [listOfEvents.text stringByAppendingString:[NSString stringWithFormat:@"\nEvent: %@", eventDescription ]];
}
-(void)userCreatedNewEvent2:(NSString *)eventDescription2
{
    //list the new events to with format of Event
    listOfEvents.text = [listOfEvents.text stringByAppendingString:[NSString stringWithFormat:@"\nDate: %@\n", eventDescription2 ]];
}

@end
