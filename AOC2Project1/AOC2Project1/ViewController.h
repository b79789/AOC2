//
//  ViewController.h
//  AOC2Project1
//
//  Created by Brian Stacks on 3/4/14.
//  Copyright (c) 2014 Brian Stacks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "carFactory.h"

@interface ViewController : UIViewController
{
    NSString *text;
    UILabel *myTextLabel;
    UILabel *myCalcLabel;
    carFactory *mycarFactory;
    baseCar *myBaseCar;
    chevyCar * myChevy;
    fordCar * myFord;
    chryslerCar * myChrysler;
}

@end
