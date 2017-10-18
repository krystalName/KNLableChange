//
//  UILabel+chageTextColorAndFont.h
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/18.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ChageTextColorAndFont)



/**
 改变部分字体颜色
 
 @param content 要改变的字符串
 @param color 要改变的字体颜色
 @param start 开始改变的位置
 @param end 结束改变的位置
 @return 返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)ChageLableColorWihtString:(NSString *)content
                                              WithColor:(UIColor *)color
                                              WithStart:(NSInteger )start
                                                WithEnd:(NSInteger )end;


/**
 改变部分字体大小
 
 @param content 要改变的字符串
 @param font 要改变的字体Font
 @param start 开始改变的位置
 @param end 结束改变的位置
 @return  返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)ChageLableFontWithString:(NSString *)content
                                              WithFont:(UIFont *)font
                                             WithStart:(NSInteger )start
                                               WithEnd:(NSInteger )end;

/**
 改变部分字体颜色和大小
 
 @param content 要改变的字符串
 @param font 要改变的字体大小
 @param color 要改变的字体颜色
 @param start 开始改变的位置
 @param end 结束改变的位置
 @return 返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)ChageLableColorAndFontWithString:(NSString *)content
                                                      WihtFont:(UIFont *)font
                                                     WithColor:(UIColor *)color
                                                     WithStart:(NSInteger )start
                                                       WithEnd:(NSInteger )end;



@end
