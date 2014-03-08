//
//  chevyCar.m
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "chevyCar.h"

@implementation chevyCar

@synthesize distanceTraveled,timePerQuarterMile,text,carModel,carColor ;

//initialize the base car, creating the instance and setting mile time to 0
-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Red"];
        //[self setCarMileTime:100];
        [self setCarModel:@"Camaro"];
        [self setDistanceTraveled:100];
        [self setTimePerQuarterMile:5];
        
    }
    return self;
}

-(int)calculateMileTime
{
    if (timePerQuarterMile == 0) {
        [self setTimePerQuarterMile:10];
        [self setCarModel:@"Trailbalzer"];
        return distanceTraveled;
    }else if (timePerQuarterMile == 1) {
        [self setTimePerQuarterMile:20];
        [self setCarModel:@"Cavaliar"];
        return distanceTraveled;
    }else if (timePerQuarterMile == 3) {
        [self setTimePerQuarterMile:10];
        [self setCarModel:@"Malibu"];
        return timePerQuarterMile;
    }else{
        NSLog(@"Something went wrong");
        return 5;
    }
}

-(NSString*)myText
{
    [self setText:@"My car model is Chevy "];
    return text;
    //text = [NSString stringWithFormat:@"My car model is %@ and the color is %@",carModel,carColor];
    
    //if (text != nil) {
        //return text;
    //}
   // return nil;
}

-(NSString*)myText2
{
    [self setText:@"This car has a mile speed of %i "];
    return text;
    //text = [NSString stringWithFormat:@"This car has a mile speed of %i ", (distanceTraveled/timePerQuarterMile)];
    
}

@end
