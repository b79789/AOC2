//
//  chevyCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "baseCar.h"

@interface chevyCar : baseCar

//data members for speed and time
@property int distanceTraveled;
@property int timePerQuarterMile;
@property NSString * text;
@property    NSString *carModel;
@property    NSString *carColor;

-(NSString*)myText2;




@end
