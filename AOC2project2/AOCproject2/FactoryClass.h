//
//  FactoryClass.h
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseClass.h"
#import "carClass1.h"
#import "carClass2.h"
#import "carClass3.h"

@interface FactoryClass : NSObject

+(BaseClass *) createNewClass: (int)classOrder;

@end
