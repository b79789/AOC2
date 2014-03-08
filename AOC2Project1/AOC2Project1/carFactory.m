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
    if (carType == CreateChevroletType_Chevrolet) {
        return [[chevyCar alloc]init];
    }else if (carType == CreateFordType_Ford){
        return [[fordCar alloc]init];
    }else if (carType == CreateChryslerType_Chrysler){
        return [[chryslerCar alloc]init];
    }else{
        return 0;
    }
}

@end
