//
//  HJInputVIew.m
//  Project2015
//
//  Created by john.wei on 15/6/25.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import "HJInputVIew.h"

#define Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Screen_Width       [[UIScreen mainScreen] bounds].size.width
#define InputView_Height   44.0

@implementation HJInputVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    CGRect inputViewFrame = CGRectMake(0, Screen_Height-InputView_Height, Screen_Width, InputView_Height);
    self = [super initWithFrame:inputViewFrame];
    if (self) {
        
    }
    return self;
}

@end
