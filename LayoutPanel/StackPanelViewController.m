//
//  ViewController.m
//  LayoutPanel
//
//  Created by nekle on 13-9-7.
//  Copyright (c) 2013年 nekle. All rights reserved.
//

#import "StackPanelViewController.h"
#import "PanelUtil.h"
#import "GridPanel.h"

#import "DockPanel.h"

#import "StackPanel.h"

@interface StackPanelViewController ()
{
    
    IBOutlet StackPanel *mainPanel;
}

@end

@implementation StackPanelViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mainPanel.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1];
    mainPanel.flowDirector = eStackPanelFlowDirector_TopToBottom;
    mainPanel.defaultArchorType = eStackPanelArchorType_CenterTop;
    
    UILabel *myname = [[UILabel alloc] init];
    myname.text = @"Title";
    myname.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
    myname.textAlignment = NSTextAlignmentCenter;
    [myname sizeToFit];
    [mainPanel addView:myname withMargin:LayoutMarginMake(20, 0, 0, 0) archor:eStackPanelArchorType_CenterTop | eStackPanelArchorType_FillWidth ];
    
    UILabel *mydes = [[UILabel alloc] init];
    myname.textAlignment = NSTextAlignmentCenter;
    mydes.lineBreakMode = NSLineBreakByWordWrapping;
    mydes.text = @"DESCRIPTION: \nthis is a label \nswill be added in StackPanel \nyou can set its margins";
    mydes.numberOfLines = 0;
    mydes.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
    [mydes sizeToFit];
    [mainPanel addView:mydes withMargin:LayoutMarginMake(10, 10, 0, 10) archor:eStackPanelArchorType_CenterTop | eStackPanelArchorType_FillWidth];
    
    GridPanel *countPanel = [[GridPanel alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [mainPanel addView:countPanel withMargin:LayoutMarginMake(0, 0, 0, 0) archor:eStackPanelArchorType_CenterTop|eStackPanelArchorType_FillWidth];
    
    [countPanel setRows:[[NSMutableArray alloc] initWithObjects:@"40", nil] andColumn:[[NSMutableArray alloc] initWithObjects:@"33.3%", @"33.4%",@"33.3%", nil]];
    
    UILabel *broadCount = [[UILabel alloc] init];
    broadCount.text = @"微博:1231";
    [broadCount sizeToFit];
    broadCount.textAlignment = NSTextAlignmentRight;
    broadCount.backgroundColor = [UIColor colorWithRed:0.7 green:0.5 blue:0.75 alpha:1];
    
    [countPanel addView:broadCount atRow:0 andColumn:0 withMargin:LayoutMarginMake(1, 1, 1, 1) archor:eGridPanelArchorType_RightCenter | eGridPanelArchorType_FillWidth];
    
    UILabel *followingCount = [[UILabel alloc] init];
    followingCount.text = @"微博:3123";
    [followingCount sizeToFit];
    followingCount.textAlignment = NSTextAlignmentCenter;
    followingCount.backgroundColor = [UIColor colorWithRed:0.7 green:0.5 blue:0.75 alpha:1];
    
    [countPanel addView:followingCount atRow:0 andColumn:1 withMargin:LayoutMarginMake(1, 1, 1, 1) archor:eGridPanelArchorType_CenterCenter | eGridPanelArchorType_FillWidth];

    UILabel *followedCount = [[UILabel alloc] init];
    followedCount.text = @"微博:123";
    [followedCount sizeToFit];
    followedCount.textAlignment = NSTextAlignmentLeft;
    followedCount.backgroundColor = [UIColor colorWithRed:0.7 green:0.5 blue:0.75 alpha:1];
    
    [countPanel addView:followedCount atRow:0 andColumn:2 withMargin:LayoutMarginMake(1, 1, 1, 1) archor:eGridPanelArchorType_LeftCenter | eGridPanelArchorType_FillWidth];

    UILabel *myBlog = [[UILabel alloc] init];
    myBlog.text = @"MY BLOG";
    [myBlog sizeToFit];
    myBlog.textAlignment = NSTextAlignmentCenter;
    myBlog.backgroundColor  = [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:1];
    
    [mainPanel addView:myBlog withMargin:LayoutMarginMake(2, 2, 2, 2) archor:eStackPanelArchorType_CenterTop | eStackPanelArchorType_FillWidth];
    
    UILabel *myWeibo = [[UILabel alloc] init];
    myWeibo.text = @"MY WEIBO";
    [myWeibo sizeToFit];
    myWeibo.textAlignment = NSTextAlignmentCenter;
    myWeibo.backgroundColor = [UIColor colorWithRed:0.8 green:0.3 blue:0.3 alpha:1];
    [mainPanel addView:myWeibo withMargin:LayoutMarginMake(2, 2, 2, 2) archor: eStackPanelArchorType_CenterTop | eStackPanelArchorType_FillWidth];
    
    DockPanel *dock = [[DockPanel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    dock.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1];
    [mainPanel addView:dock withMargin:LayoutMarginMake(2, 2, 2, 2) archor:eStackPanelArchorType_LeftTop | eStackPanelArchorType_Fill];
    
    UILabel *bottom = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 100)];
    bottom.text = @"BOTTOM";
    [bottom sizeToFit];
    bottom.backgroundColor = [UIColor redColor];
    [dock addView:bottom withMargin:LayoutMarginMake(1, 1, 1, 1) dock:  eDockSideType_Right];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
