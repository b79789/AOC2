//
//  fordCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"

typedef enum {
    car4=0,
    car5,
    car6
} carOrder2;

@interface fordCar : baseCar

//data members for speed and time
@property carOrder2 *fordCarOrder;
@property int distanceTraveled;
@property int timePerQuarterMile;
@property int price;
@property int tax;

@end
