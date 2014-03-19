//
//  carClass2.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "carClass2.h"

@implementation carClass2

@synthesize myCarType,myFordModel,carPrice,carTopSpeed,myCalc,overTwoHundred;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        //set values here
        
    }
    return self;
}

-(int)calculate
{
    if (myFordModel == 0) {
        self.carTopSpeed = 225;
        return carTopSpeed;
    }else if(myFordModel == 1){
        self.carTopSpeed = 201;
        return carTopSpeed;
    }else if(myFordModel == 2){
        self.carTopSpeed = 120;
        return carTopSpeed;
    }else{
        return carTopSpeed;
    }
}

@end
