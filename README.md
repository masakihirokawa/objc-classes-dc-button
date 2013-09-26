DCButton
======================

テキストボタンと画像ボタンをシンプルな記述で生成する「DCButton」クラスです。

##使用方法

###テキストボタンの取得

```objective-c
    UIButton *planeButton = [DCButton planeButton:CGRectMake(40, 140, 240, 36)
                                             text:@"Button"
                                         delegate:self
                                           action:@selector(buttonDidTap:)
                                              tag:0];
```

###画像ボタンの取得

```objective-c
    UIButton *imageButton = [DCButton imageButton:CGRectMake(40, 200, 240, 36)
                                              img:[UIImage imageNamed:@"button.png"]
                                     isHighlighte:NO
                                           on_img:nil
                                         delegate:self
                                           action:@selector(buttonDidTap:)
                                              tag:1];
```
