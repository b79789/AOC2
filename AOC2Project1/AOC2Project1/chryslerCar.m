//
//  chryslerCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chryslerCar.h"

@implementation chryslerCar

@synthesize  chrylserType,myCarType,text;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        //set values here
        
    }
    return self;
}

-(int)calculateMileTime
{
    if (myCarType == FourDoor) {
        [self setMyCarType:0];
        [self setChrylserType:@"ThreeHundred"];
        return myCarType;
    }else if (myCarType ==TwoDoor){
        [self setMyCarType:1];
        [self setChrylserType:@"Sebring"];
        return myCarType;
    }else if (myCarType == RaceType){
        [self setMyCarType:2];
        [self setChrylserType:@"Viper"];
        return myCarType;
    }else{
        NSLog(@"Something went wrong");
        return 99;
    }
}



-(NSString*)myText
{
    [self setText:@"My car model is Chrysler "];
    return text;
}



@end
