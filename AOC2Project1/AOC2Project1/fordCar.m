//
//  fordCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "fordCar.h"

@implementation fordCar

@synthesize distanceTraveled,timePerQuarterMile,text,carModel,carColor,carDistance,carMileTime;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Black"];
        [self setCarMileTime:100];
        [self setCarModel:@"Mustang"];
        [self setDistanceTraveled:100];
        [self setTimePerQuarterMile:4.5];
        
    }
    return self;
}

-(int)calculateMileTime
{
    [self setCarMileTime:(distanceTraveled/timePerQuarterMile)];
    // just a statement written to log with current value
    NSLog(@"This car has a mile speed of %i ", (distanceTraveled/timePerQuarterMile));
    if (distanceTraveled == 0) {
        [self setDistanceTraveled:10];
        [self setCarModel:@"Stratus"];
        return distanceTraveled;
    }else if (distanceTraveled == 1) {
        [self setDistanceTraveled:20];
        [self setCarModel:@"Escort"];
        return distanceTraveled;
    }else if (distanceTraveled == 0) {
        [self setDistanceTraveled:10];
        [self setCarModel:@"Eclipse"];
        return distanceTraveled;
    }else{
        NSLog(@"Something went wrong");
        return 5;
    }
}


-(NSString*)myText
{
    [self setText:@"My car model is Ford "];
    return text;
}

-(NSString*)myText2
{
    text = [NSString stringWithFormat:@"This car has a mile speed of %i ", (distanceTraveled/timePerQuarterMile)];
    if (text != nil) {
        return text;
    }
    return nil;
}
@end
