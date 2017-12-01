//
//  ViewController.m
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/17.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ChangeLineSpaceAndWordSpace.h"
#import "UILabel+ChageTextColorAndFont.h"
#import "UILabel+AddLine.h"
#import "UIColor+ImageColor.h"

@interface ViewController ()


@property(nonatomic, strong) UILabel *tileLable;

@property(nonatomic, strong) UIView *bgView;

@property(nonatomic, strong) UIImageView *demoImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.tileLable];
    
    //设置行间距
//    self.tileLable.attributedText = [UILabel changeLineSpaceForLabel:@"安达看见你哭暗示大家看谁看见电脑开机啊啥的年纪看书的框架暗示健康啊啥的年纪看得见卡萨诺啊的年纪看那就开电脑开机啊" WithSpace:10];
//
    //设置字体间距
//    self.tileLable.attributedText = [UILabel changeWordSpaceForLabel:@"安达看见你哭暗示大家看谁看见电脑开机啊啥的年纪看书的框架暗示健康啊啥的年纪看得见卡萨诺啊的年纪看那就开电脑开机啊" WithSpace:2];
    
    //设置行间距和字体间距
//  self.tileLable.attributedText = [UILabel changeSpaceForLabel:nil withLineSpace:10 WordSpace:4];
    
    //设置内容中的颜色(指定部分)
//    self.tileLable.attributedText = [UILabel ChageLableColorWihtString:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" WithColor:[UIColor blueColor] WithStart:2 WithEnd:6];
    
    
    //设置内容中的字体大小(指定部分)
//    self.tileLable.attributedText = [UILabel ChageLableFontWithString:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" WithFont:[UIFont systemFontOfSize:24] WithStart:1 WithEnd:5];
    
    //设置内容中的字体和颜色一起（指定部分）
//    self.tileLable.attributedText = [UILabel ChageLableColorAndFontWithString:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" WihtFont:[UIFont systemFontOfSize:24] WithColor:[UIColor redColor] WithStart:0 WithEnd:10];
    
    //添加删除线
//       self.tileLable.attributedText = [UILabel AddDeleteLineWithTitle:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" AndColor:[UIColor redColor] WithStart:1 WithEnd:5];
    
    //添加下划线
      self.tileLable.attributedText = [UILabel AddUnderLineWithTitle:@"打死那就看你就啊说的那句卡上～ 就啊可是能看到" AddColorL:[UIColor redColor] WirhStart:1 WithEnd:5];
    
    //设置首个字符串于内容字符串中相同的颜色和字体
    // self.tileLable.attributedText = [UILabel ChageLableColorAndFontWithContent:@"我吃饭了。我喝酒了。我撒尿了～" FirstString:@"喝酒" WithFont:[UIFont systemFontOfSize:15] WithColor:[UIColor redColor]];
    
    //设置所有于内容字符串中的相同字符串颜色和字体
//    self.tileLable.attributedText = [UILabel ChangeLableColorAndFontWithContent:@"我是谁？ 我是我啊～" changeString:@"我是" WithFont:[UIFont systemFontOfSize:18] WithColor:[UIColor redColor]];
    
    [self.tileLable.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10].active = YES;
    [self.tileLable.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:44].active = YES;
   
    [self.tileLable.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-10].active = YES;
    
        //设置一张图片
    UIImage *image = [UIImage imageNamed:@"120"];
    
    //添加View
    [self.view addSubview:self.bgView];
    [self.demoImageView setImage:image];
    
    //使用分类。改变bgView 的颜色
    [self.bgView setBackgroundColor:[UIColor getImageMainColor:image]];
    
}


-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 70)];
        [_bgView addSubview:self.demoImageView];
    }
    return _bgView;
}

-(UIImageView *)demoImageView{
    if (!_demoImageView) {
        _demoImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, self.bgView.bounds.size.height/2 - 25, 50, 50)];
        _demoImageView.contentMode = UIViewContentModeScaleAspectFill;
        _demoImageView.layer.masksToBounds = YES;
        _demoImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _demoImageView.layer.borderWidth = 1;
    }
    return _demoImageView;
}

-(UILabel *)tileLable{
    if (!_tileLable) {
        _tileLable = [[UILabel alloc]init];
        _tileLable.font = [UIFont systemFontOfSize:14];
        _tileLable.textColor = [UIColor grayColor];
        _tileLable.translatesAutoresizingMaskIntoConstraints = NO;
        _tileLable.numberOfLines = 0;
    }
    return _tileLable;
}
@end
