//
//  BaseClass.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "BaseClass.h"

@implementation BaseClass

@synthesize carModel,carColor,text,carPrice,carSafetyRating,myCalc;

-(id)init
{
    self =[super init];
    if (self != nil)
    {
        [self setCarColor:@"Red"];
        [self setCarModel:@"Default Model"];
        
    }
    return self;
}

-(int)calculate
{
    myCalc = (carPrice *.25);
    if(myCalc != 0){
        return myCalc;
    }else{
        return 0;
    }
}

-(NSString*)myText
{
    text = [NSString stringWithFormat:@"The Model is: %@ and the color is %@",carModel,carColor];
    if (text != nil) {
        return text;
    }
    return nil;
}


@end
