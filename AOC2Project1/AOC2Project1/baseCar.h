//
//  baseCar.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    CreateChevroletType_Chevrolet=0,
    CreateFordType_Ford,
    CreateChryslerType_Chrysler
} carEnum;

@interface baseCar : NSObject
// data members for mile time, model name of car, array of features.
{


}

@property    NSString *carModel;
@property    NSString *carColor;
@property int carMileTime;
@property int carDistance;
@property int myCalc;
@property int carPrice;
@property    NSString * text;

// initialize
-(id)init;


//calculation method
-(int)calculateMileTime;

-(NSString*)myText;


@end
