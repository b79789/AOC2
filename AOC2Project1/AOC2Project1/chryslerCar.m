//
//  chryslerCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chryslerCar.h"

@implementation chryslerCar

@synthesize  distanceTraveled,timePerQuarterMile,chrylserType,myCarType;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Blue"];
        [self setCarMileTime:100];
        [self setCarModel:@"Dodge"];
        [self setDistanceTraveled:100];
        [self setTimePerQuarterMile:6];
        [self setChrylserType:@""];
        [self setMyCarType:RaceType];
        NSLog(@"you found my Car!!!");
        
    }
    return self;
}

-(void)calculateMileTime
{
    if (myCarType == FourDoor) {
        [self setMyCarType:0];
        [self setChrylserType:@"ThreeHundred"];
    }else if (myCarType ==TwoDoor){
        [self setMyCarType:1];
        [self setChrylserType:@"Sebring"];
    }else if (myCarType == RaceType){
        [self setMyCarType:2];
        [self setChrylserType:@"Viper"];

    }else{
        NSLog(@"Something went wrong");
    }
}


@end
