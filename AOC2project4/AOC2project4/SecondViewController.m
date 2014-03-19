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


-(void)onSwipe2:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        UIViewController *tb2 = [[ViewController alloc] init];
        tb2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        [self.navigationController pushViewController: tb2 animated:YES];
        [self performSegueWithIdentifier: @"backToFirstSegue" sender: self];
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
