//
//  ViewController.m
//  UIButtonBasic
//
//  Created by Dolice on 2013/05/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

enum {
    BUTTON_FIRST = 0
};

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setButton];
}

//ボタンをセット
- (void)setButton
{
    //ボタンを作成
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //ボタンのテキストを設定
    [button setTitle:@"Button" forState:UIControlStateNormal];
    
    //ボタンのテキストに合わせてサイズを自動調整
    [button sizeToFit];
    
    //画面の中央に配置
    button.center = self.view.center;
    
    //画面が変わってもボタンの位置を自動調整
    button.autoresizingMask =
        UIViewAutoresizingFlexibleWidth |
        UIViewAutoresizingFlexibleHeight |
        UIViewAutoresizingFlexibleLeftMargin |
        UIViewAutoresizingFlexibleRightMargin |
        UIViewAutoresizingFlexibleTopMargin |
        UIViewAutoresizingFlexibleBottomMargin;
    
    //ボタンのタグを指定
    button.tag = BUTTON_FIRST;
    
    //ボタンをタップした時に指定のメソッドを呼ぶ
    [button addTarget:self
               action:@selector(buttonDidTap:)
     forControlEvents:UIControlEventTouchUpInside];
    
    //ボタンを画面に追加
    [self.view addSubview:button];
}

//ボタンのタップイベント
- (void)buttonDidTap:(UIButton *)button
{
    //タグを格納
    NSInteger eventType = button.tag;
    
    //タグからイベントタイプを取得し振り分け処理
    if (eventType == BUTTON_FIRST) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:[NSString stringWithFormat:@"eventType: %d", eventType]
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    }
}

@end
