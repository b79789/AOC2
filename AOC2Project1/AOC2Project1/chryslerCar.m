//
//  chryslerCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chryslerCar.h"

@implementation chryslerCar

@synthesize  distanceTraveled,timePerQuarterMile,chrylserType,myCarType,text,carModel,carColor;

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



-(NSString*)myText
{
    text = [NSString stringWithFormat:@"My car model is %@ and the color is %@",carModel,carColor];
    
    if (text != nil) {
        return text;
    }
    return nil;
}

-(NSString*)myText2
{
    text = [NSString stringWithFormat:@"This car has a mile speed of %i ", (distanceTraveled/timePerQuarterMile)];
    if (text != nil) {
        return text;
    }
    return nil;
}

@end
