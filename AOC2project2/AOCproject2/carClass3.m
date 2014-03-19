//
//  carClass3.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "carClass3.h"

@implementation carClass3


@synthesize  myCarType,text;

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
    if (myCarType == FourDoor) {
        [self setCarTopSpeed:150];
        return myCarType;
    }else if (myCarType ==TwoDoor){
        [self setCarTopSpeed:201];
        return myCarType;
    }else if (myCarType == RaceType){
        [self setCarTopSpeed:290];
        return myCarType;
    }else{
        NSLog(@"Something went wrong");
        return 99;
    }
}
@end
