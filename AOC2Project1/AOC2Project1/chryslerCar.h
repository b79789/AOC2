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
    FourDoor,
    TwoDoor,
    RaceType
}carType;
//data members for speed and time
@property int distanceTraveled;
@property int timePerQuarterMile;
@property NSString *chrylserType;
@property int myCarType;



@end
