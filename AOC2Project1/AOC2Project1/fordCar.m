//
//  fordCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "fordCar.h"

@implementation fordCar

@synthesize distanceTraveled,timePerQuarterMile,fordCarOrder,text,myCalc,carMileTime,price,tax,carPrice;

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
    price = 9999;
    tax = (price) *(.17);
    self.carPrice = myCalc * (price / tax);
    return timePerQuarterMile;
    NSLog(@"The cars PRICE calculation is %d ", carPrice);
}


-(NSString*)myText
{
    [self setText:@"My car model is Ford "];
    return text;
}
@end

