//
//  FactoryClass.m
//  AOCproject2
//
//  Created by Brian Stacks on 3/12/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import "FactoryClass.h"

@implementation FactoryClass

+(BaseClass *) createNewClass: (int)classOrder;
{
    if (classOrder == 0) {
        return [[carClass1 alloc]init];
    }else if(classOrder ==1){
        return [[carClass2 alloc]init];
    }else if (classOrder == 2){
        return [[carClass3 alloc]init];
    }else
        return 0;
}

@end
