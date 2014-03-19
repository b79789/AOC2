//
//  carClass1.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "carClass1.h"

@implementation carClass1

@synthesize rate,myCarType,myChevyModel,carPrice,myRate;

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
    if (myChevyModel == 0) {
        self.rate = myRate * (rate/carPrice);
        return myRate;
    }else{
    return 0;
    }
}

@end
