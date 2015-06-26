//
//  HJChatListModel.m
//  Project2015
//
//  Created by john.wei on 15/6/24.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import "HJChatListModel.h"

@implementation HJChatListModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (NSMutableArray *)chatListArray
{
    NSMutableArray *pArray = [[NSMutableArray alloc] init];
    HJChatListModel *model0 = [[HJChatListModel  alloc] init];
    model0.nicName = @"卖小女孩的火柴";
    model0.avatarUrl = @"avatar.png";
    model0.content = @"我们聊聊吧";
    [pArray addObject:model0];
    
    HJChatListModel *model1 = [[HJChatListModel  alloc] init];
    model1.nicName = @"樱桃大丸子";
    model1.avatarUrl = @"avatar.png";
    model1.content = @"";
    [pArray addObject:model1];
    
    return pArray;
}
@end
