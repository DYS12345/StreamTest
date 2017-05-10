//
//  EHomeController.m
//  StreamTest
//
//  Created by dong on 2017/5/10.
//  Copyright © 2017年 dong. All rights reserved.
//

#import "EHomeController.h"
#import "EHomeView.h"
#import "EHomePresenter.h"
#import "EHomeFollowController.h"
#import "EHomeNewController.h"
#import "EHomeTrendingController.h"

@interface EHomeController ()

@property(nonatomic, strong) EHomeView *customView;
@property(nonatomic, strong) EHomePresenter *presenter;
@property(nonatomic, strong) EHomeFollowController *followCtrl;
@property(nonatomic, strong) EHomeNewController *latestCtrl;
@property(nonatomic, strong) EHomeTrendingController *trendingCtrl;

@end

@implementation EHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [[EHomePresenter alloc] init];
    
    self.followCtrl = [EHomeFollowController new];
    self.latestCtrl = [EHomeNewController new];
    self.trendingCtrl = [EHomeTrendingController new];
}

-(void)loadView{
    [super loadView];
    self.customView = [[EHomeView alloc] init];
    self.view = self.customView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
