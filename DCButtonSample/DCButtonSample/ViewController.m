//
//  ViewController.m
//  DCButtonSample
//
//  Created by Masaki Hirokawa on 2013/06/04.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//ボタンのタイプ
enum {
    BUTTON_PLANE = 0,
    BUTTON_IMAGE = 1
};

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //プレーンボタンの作成
    UIButton *planeButton = [DCButton planeButton:CGRectMake(40, 140, 240, 36)
                                             text:@"Button"
                                         delegate:self
                                           action:@selector(buttonDidTap:)
                                              tag:BUTTON_PLANE];
    [self.view addSubview:planeButton];
    
    //イメージボタンの作成
    UIButton *imageButton = [DCButton imageButton:CGRectMake(40, 200, 240, 36)
                                              img:[UIImage imageNamed:@"button.png"]
                                     isHighlighte:NO
                                           on_img:nil
                                         delegate:self
                                           action:@selector(buttonDidTap:)
                                              tag:BUTTON_IMAGE];
    [self.view addSubview:imageButton];
}


//ボタンのタップイベント
- (void)buttonDidTap:(UIButton *)button
{
    //タグを格納
    NSInteger eventType = button.tag;
    
    //タグによって振り分け処理
    if (eventType == BUTTON_PLANE) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:@"planeButtonDidTap"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    } else if (eventType == BUTTON_IMAGE) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:@"imageButtonDidTap"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
    }
}

@end
