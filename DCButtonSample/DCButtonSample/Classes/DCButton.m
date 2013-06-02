//
//  DCButton.m
//  DCButtonSample
//
//  Created by Dolice on 2013/06/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "DCButton.h"

@implementation DCButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

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

+(UIButton*) makeImageButton:(CGRect)frame img:(UIImage*)img isHighlighte:(BOOL)isHighlighte on_img:(UIImage*)on_img delegate:(id)delegate action:(SEL)action tag:(NSInteger)tag {
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button setFrame:frame];
	[button setImage:img forState:UIControlStateNormal];
	button.adjustsImageWhenDisabled = NO;
    if(!isHighlighte) {
        button.showsTouchWhenHighlighted = NO;
        button.adjustsImageWhenHighlighted = NO;
    }
    else if(on_img != nil || ![on_img isEqual:[NSNull null]]) {
        [button setImage:on_img forState:UIControlStateNormal];
    }
	[button setTag:tag];
	[button addTarget:delegate action:action forControlEvents:UIControlEventTouchUpInside];
	return button;
}

@end
