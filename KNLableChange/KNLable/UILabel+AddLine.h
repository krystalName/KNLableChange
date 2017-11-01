//
//  UILabel+AddLine.h
//  KNLableChange
//
//  Created by 刘凡 on 2017/11/1.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (AddLine)


/**
 添加一条删除线

 @param title 内容
 @param color 线条颜色
 @param start 开始位置
 @param end 结束位置
 @return 返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)AddLineForTitle:(NSString *)title AndColor:(UIColor *)color WithStart:(NSInteger)start WithEnd:(NSInteger)end;

@end
