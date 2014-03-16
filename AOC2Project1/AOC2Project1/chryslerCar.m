//
//  chryslerCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chryslerCar.h"

@implementation chryslerCar

@synthesize  chrylserType,myCarType,text,tax,price,carPrice,myCalc;

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
    price = 12500;
    tax = (price) *(.17);
    self.carPrice = myCalc * (price / tax);
    return carPrice;
    NSLog(@"The cars PRICE calculation is %d ", carPrice);
   
}



-(NSString*)myText
{
    [self setText:@"My car model is Chrysler "];
    return text;
}



@end
