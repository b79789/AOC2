//
//  carClass3.h
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "BaseClass.h"

@interface carClass3 : BaseClass


typedef enum
{
    FourDoor=0,
    TwoDoor,
    RaceType
}carType;

@property int myCarType;

@end
