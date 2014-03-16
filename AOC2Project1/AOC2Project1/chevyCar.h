//
//  chevyCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"


typedef enum {
    car1=0,
    car2,
    car3
} carOrder;
@interface chevyCar : baseCar

//data members for speed and time
@property int distanceTraveled;
@property int timePerQuarterMile;
@property int price;
@property int tax;
@end
