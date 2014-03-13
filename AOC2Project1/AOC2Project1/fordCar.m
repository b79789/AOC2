//
//  fordCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "fordCar.h"

@implementation fordCar

@synthesize distanceTraveled,timePerQuarterMile,fordCarOrder,text,myCalc,carMileTime;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        //set values here
        
    }
    return self;
}

-(int)calculateMileTime
{
    if (fordCarOrder != nil) {
        self.timePerQuarterMile = myCalc * (distanceTraveled + 1);
        return timePerQuarterMile;
        NSLog(@"The cars time calculation is %d ", timePerQuarterMile);
    }
    return self.timePerQuarterMile;
}


-(NSString*)myText
{
    [self setText:@"My car model is Ford "];
    return text;
}
@end

