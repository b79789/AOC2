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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SecondViewController"]) {
        SecondViewController *vc2 = (SecondViewController *)segue.destinationViewController;
        //vc2.name = myTextView.text;
    }
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        UIViewController *tb = [[SecondViewController alloc] init];
        tb = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
        [self.navigationController pushViewController:tb animated:YES];
        NSLog(@"This Worked!!");
        [self performSegueWithIdentifier: @"fromFirstSegue" sender: self];
    }else{
        NSLog(@"This is Broken!!");
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CALayer *btnLayer = [roundedSaveButton layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    rightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel1 addGestureRecognizer:rightSwipe];
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
