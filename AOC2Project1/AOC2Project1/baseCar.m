//
//  baseCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"

@implementation baseCar

//synthesize creates get and set methods for each property
@synthesize carMileTime,carModel,carColor;

//initialize the base recipe, creating the instance and setting mile time to 0
-(id)init
{
    self =[super init];
    if (self != nil)
    {
        
        
    }
    return self;
}

//calculation method
-(void)calculateMileTime
{
    // just a statement written to log with current value
    NSLog(@"This car has a mile speed of %i ", carMileTime);
}

-(void)setAttributes:(carEnum)type carColor:(NSString*)myCarColor model:(NSString*)myCar time:(int)myTime
{
    carMileTime = myTime;
    carColor=myCarColor;
    carModel=myCar;
}

@end
