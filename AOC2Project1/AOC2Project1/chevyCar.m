//
//  chevyCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chevyCar.h"

@implementation chevyCar

@synthesize distanceTraveled,timePerQuarterMile,text,carMileTime,myCalc ;

//initialize the base car, creating the instance and setting mile time to 0
-(id)init
{
    self =[super init];
    if (self != nil)
    {
        // set values here
        
    }
    return self;
}

-(int)calculateMileTime
{
    self.timePerQuarterMile = myCalc * (distanceTraveled / carMileTime);
    return timePerQuarterMile;
    NSLog(@"The cars time calculation is %d ", timePerQuarterMile);
}


-(NSString*)myText
{
    [self setText:@"My car model is Chevy "];
    return text;
    //text = [NSString stringWithFormat:@"My car model is %@ and the color is %@",carModel,carColor];
    
    //if (text != nil) {
        //return text;
    //}
   // return nil;
}

@end
