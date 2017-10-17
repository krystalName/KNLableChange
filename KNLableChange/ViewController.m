//
//  ViewController.m
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/17.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+ChangeLineSpaceAndWordSpace.h"


@interface ViewController ()


@property(nonatomic, strong) UILabel *tileLable;


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
 self.tileLable.attributedText = [UILabel changeSpaceForLabel:@"安达看见你哭暗示大家看谁看见电脑开机啊啥的年纪看书的框架暗示健康啊啥的年纪看得见卡萨诺啊的年纪看那就开电脑开机啊" withLineSpace:10 WordSpace:4];
    
    
    [self.tileLable.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10].active = YES;
    [self.tileLable.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:44].active = YES;
   
    [self.tileLable.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-10].active = YES;
    


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
