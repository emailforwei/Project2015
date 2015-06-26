//
//  HJChatListViewController.m
//  Project2015
//
//  Created by john.wei on 15/6/24.
//  Copyright (c) 2015年 whj. All rights reserved.
//

#import "HJChatListViewController.h"
#import "Masonry.h"
#import "HJChatListModel.h"
#import "HJChatViewController.h"


@interface HJChatListViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *chatListtableView;
@property (nonatomic,strong)NSMutableArray *chatListArray;
@end

@implementation HJChatListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"最近联系人", nil);
    
    _chatListArray = [[NSMutableArray alloc] init];
    [self.view addSubview:self.chatListtableView];
    [self.chatListtableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    self.chatListArray = [HJChatListModel chatListArray];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.chatListArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"chatListViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"chatListViewCell"];
    }
    HJChatListModel *model = self.chatListArray[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:model.avatarUrl];
    cell.textLabel.text = model.nicName;
    cell.detailTextLabel.text = model.content;
    cell.detailTextLabel.textColor = [UIColor lightGrayColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HJChatViewController *chatViewController = [[HJChatViewController alloc]init];
    chatViewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:chatViewController animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UIView

- (UITableView *)chatListtableView
{
    if (_chatListtableView==nil) {
        _chatListtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _chatListtableView.delegate = self;
        _chatListtableView.dataSource = self;
    }
    return _chatListtableView;
}

@end
