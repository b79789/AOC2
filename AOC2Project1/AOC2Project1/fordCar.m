//
//  fordCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "fordCar.h"

@implementation fordCar

@synthesize carSpeed, timePerMile, carColor;

//customizing init to set unique data member
-(id)init
{
    self = [super init];
    if (self != nil) {
        [self setCarMileTime:11.9];
        [self setCarSpeed:60];
        [self setTimePerMile:47.6];
        [self setCarColor:@"The car is Black"];
    }
    return self;
};

//overiding the base car  mile time to factor in unique values
-(void)calculateMileTime
{
    [self setCarMileTime:(carSpeed * timePerMile)];
    NSLog(@"This car has a mile speed of %i ", self.carMileTime);
    NSLog(@"NSString = %@",carColor);
}

@end
