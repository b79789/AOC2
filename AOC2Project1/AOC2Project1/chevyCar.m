//
//  chevyCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chevyCar.h"

@implementation chevyCar

@synthesize distanceTraveled,timePerQuarterMile,text,carModel,carColor ;

//initialize the base car, creating the instance and setting mile time to 0
-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Red"];
        //[self setCarMileTime:100];
        [self setCarModel:@"Camaro"];
        [self setDistanceTraveled:100];
        [self setTimePerQuarterMile:5];
        
    }
    return self;
}

-(void)calculateMileTime
{
    [self setCarMileTime:(distanceTraveled/timePerQuarterMile)];
    // just a statement written to log with current value
    NSLog(@"This car has a mile speed of %i ", (distanceTraveled/timePerQuarterMile));
}

-(NSString*)myText
{
    text = [NSString stringWithFormat:@"My car model is %@ and the color is %@",carModel,carColor];
    
    if (text != nil) {
        return text;
    }
    return nil;
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
