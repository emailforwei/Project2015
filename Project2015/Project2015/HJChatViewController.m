//
//  HJChatViewController.m
//  Project2015
//
//  Created by john.wei on 15/6/24.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import "HJChatViewController.h"

static NSString  *chatCellIdentifier =  @"chatTableViewCell";

@interface HJChatViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *chatTableView;

@end

@implementation HJChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"chat";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.chatTableView];
    [self.chatTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    UIView *view = [[UIView alloc] init];
    self.view = view;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:chatCellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:chatCellIdentifier];
    }
    return cell;
}


#pragma mark - UIView

- (UITableView *)chatTableView
{
    if (_chatTableView == nil) {
        _chatTableView = [[UITableView alloc] init];
        _chatTableView.dataSource = self;
        _chatTableView.delegate = self;
    }
    return _chatTableView;
}
@end
