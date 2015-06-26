//
//  HJChatListModel.h
//  Project2015
//
//  Created by john.wei on 15/6/24.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJChatListModel : NSObject
@property (nonatomic,strong)NSString *nicName;
@property (nonatomic,strong)NSString *avatarUrl;
@property (nonatomic,strong)NSString *content;

+ (NSMutableArray *)chatListArray;

@end
