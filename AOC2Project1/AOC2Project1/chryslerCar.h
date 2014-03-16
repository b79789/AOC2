//
//  chryslerCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"

@interface chryslerCar : baseCar
{
    int carType;
}

typedef enum
{
    FourDoor=0,
    TwoDoor=1,
    RaceType=2
}carType;
//data members for speed and time
@property  NSString *chrylserType;
@property int myCarType;

@property int price;
@property int tax;


@end
