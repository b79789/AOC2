//
//  carClass2.h
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "BaseClass.h"

@interface carClass2 : BaseClass

typedef enum
{
    mustang,
    fairlane,
    escort
}myFordModel;

@property int myFordModel;
@property BOOL overTwoHundred;

@end
