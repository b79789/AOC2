//
//  BaseClass.h
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    createChevy=0,
    createFord,
    createDodge
}classEnum;

@interface BaseClass : NSObject
{
    // data members
    
}

@property int myCarType;
@property    NSString *carModel;
@property    NSString *carColor;
@property    NSString * text;
@property    int carPrice;
@property    int carSafetyRating;
@property    int carTopSpeed;
@property int myCalc;

-(id)init;

-(int)calculate;


-(NSString*)myText;

@end
