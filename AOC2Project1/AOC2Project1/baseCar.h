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
    
    int carMileTime;
    NSString *carModel;
    NSArray *carFeatures;
    NSString *carColor;
}
// initialize
-(id)init;

-(void)setAttributes:(carEnum)type carColor:(NSString*)myCarColor model:(NSString*)myCar time:(int)myTime;

//calculation method
-(void)calculateMileTime;

@end
