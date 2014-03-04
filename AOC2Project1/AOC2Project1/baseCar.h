//
//  baseCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCar : NSObject
{
    int carEnum;
}

typedef enum {
    Chevrolet,
    Ford,
    Chrysler
} carEnum;

// data members for mile time, model name of car, array of features.

@property int carMileTime;
@property NSString *carModel;
@property NSArray *carFeatures;

// initialize
-(id)init;

//calculation method
-(void)calculateMileTime;

@end
