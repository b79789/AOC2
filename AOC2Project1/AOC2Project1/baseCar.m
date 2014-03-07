//
//  baseCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"

@implementation baseCar

// creates get and set methods for values
@synthesize carColor,carMileTime,carModel,text,carDistance;

//initialize the base car, creating the instance and setting mile time to 0
-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Red"];
        [self setCarMileTime:1];
        [self setCarModel:@"Default Model"];
        [self setCarDistance:3];
        
    }
    return self;
}

//calculation method
-(void)calculateMileTime
{
    // just a statement written to log with current value
    text =[NSString stringWithFormat:@"This car has a mile speed of %i ", carMileTime];
    
}

-(void)setAttributes:(carEnum)type carColor:(NSString*)myCarColor model:(NSString*)myCar time:(int)myTime
{
    [self setAttributes:CreateChryslerType_Chrysler carColor:@"Default" model:@"Default" time:100];
    
}
-(NSString*)myText
{
    text = [NSString stringWithFormat:@"distance traveled / Time: %d",(carMileTime*carDistance)];
    text = [NSString stringWithFormat:@"The Model is: %@ and the color is %@",carModel,carColor];
    if (text != nil) {
        return text;
    }
    return nil;
}

@end
