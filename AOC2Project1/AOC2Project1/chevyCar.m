//
//  chevyCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chevyCar.h"

@implementation chevyCar

@synthesize distanceTraveled,timePerQuarterMile,text,carMileTime,myCalc,carPrice ,price,tax;

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
    price = 10000;
    tax = (price) *(.17);
    self.carPrice = myCalc * (price / tax);
    return timePerQuarterMile;
    NSLog(@"The cars PRICE calculation is %d ", carPrice);
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
