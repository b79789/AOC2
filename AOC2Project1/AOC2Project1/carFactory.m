//
//  carFactory.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "carFactory.h"

@implementation carFactory

+(baseCar *) createNewCar: (int)carType;
{
    return [[chevyCar alloc]init];
    return [[fordCar alloc]init];
    return [[chryslerCar alloc]init];
}

@end
