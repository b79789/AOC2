//
//  carFactory.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCar.h"
#import "chevyCar.h"
#import "fordCar.h"
#import "chryslerCar.h"

@interface carFactory : NSObject


+(baseCar *) createNewCar: (int)carType;

@end
