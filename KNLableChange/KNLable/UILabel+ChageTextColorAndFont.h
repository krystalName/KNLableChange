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



/**
 改变字符串中首个相同字符串的颜色和字体

 @param content 内容
 @param FirstString 改变的字符串内容
 @param font 字体大小
 @param color 颜色
 @return 返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)ChageLableColorAndFontWithContent:(NSString *)content
                                                    FirstString:(NSString *)FirstString
                                                       WithFont:(UIFont *)font
                                                      WithColor:(UIColor *)color;



/**
 改变字符串中相同字符串要的颜色和字体(所有)

 @param content 内容
 @param changeString 要改变的内容
 @param font 字体大小
 @param color 字体颜色
 @return 返回NSMutableAttributedString
 */
+(NSMutableAttributedString *)ChangeLableColorAndFontWithContent:(NSString *)content
                                                       changeString:(NSString *)changeString WithFont:(UIFont *)font
                                                          WithColor:(UIColor *)color;



@end
