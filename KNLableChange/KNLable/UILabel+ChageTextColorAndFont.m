//
//  UILabel+chageTextColorAndFont.m
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/18.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import "UILabel+ChageTextColorAndFont.h"

@implementation UILabel (ChageTextColorAndFont)


+(NSMutableAttributedString *)ChageLableColorWihtString:(NSString *)content WithColor:(UIColor *)color WithStart:(NSInteger)start WithEnd:(NSInteger)end
{
    NSString *contentString = content ? content : @"" ;
     NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentString];
    [attributedString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(start, end)];
    return attributedString;

}


+(NSMutableAttributedString *)ChageLableFontWithString:(NSString *)content WithFont:(UIFont *)font WithStart:(NSInteger)start WithEnd:(NSInteger)end
{
    NSString *contentString = content ? content : @"" ;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentString];
    [attributedString addAttribute:NSFontAttributeName value:font range:NSMakeRange(start, end)];
    return attributedString;
    
}


+(NSMutableAttributedString *)ChageLableColorAndFontWithString:(NSString *)content WihtFont:(UIFont *)font WithColor:(UIColor *)color WithStart:(NSInteger)start WithEnd:(NSInteger)end
{
    
    NSString *contentString = content ? content : @"" ;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentString];
    [attributedString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(start, end)];
    [attributedString addAttribute:NSFontAttributeName value:font range:NSMakeRange(start, end)];
    return attributedString;
    
}


+ (void)messageAction:(UILabel *)theLab startString:(NSString *)start endString:(NSString *)end andAllColor:(UIColor *)allColor andMarkColor:(UIColor *)markColor andMarkFondSize:(float)fontSize {
    NSString *tempStr = theLab.text;
    NSMutableAttributedString *strAtt = [[NSMutableAttributedString alloc] initWithString:tempStr];
    [strAtt addAttribute:NSForegroundColorAttributeName value:allColor range:NSMakeRange(0, [strAtt length])];
    // 'x''y'字符的范围
    NSRange tempRange = NSMakeRange(0, 0);
    if ([self judgeStringIsNull:start]) {
        tempRange = [tempStr rangeOfString:start];
    }
    NSRange tempRangeOne = NSMakeRange([strAtt length], 0);
    if ([self judgeStringIsNull:end]) {
        tempRangeOne =  [tempStr rangeOfString:end];
    }
    // 更改字符颜色
    NSRange markRange = NSMakeRange(tempRange.location+tempRange.length, tempRangeOne.location-(tempRange.location+tempRange.length));
    [strAtt addAttribute:NSForegroundColorAttributeName value:markColor range:markRange];
    // 更改字体
    // [strAtt addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:20] range:NSMakeRange(0, [strAtt length])];
    [strAtt addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue" size:fontSize] range:markRange];
    theLab.attributedText = strAtt;
}



/**
 *判断字符串是否不全为空
 */
+ (BOOL)judgeStringIsNull:(NSString *)string {
    if ([[string class] isSubclassOfClass:[NSNumber class]]) {
        return YES;
    }
    BOOL result = NO;
    if (string != nil && string.length > 0) {
        for (int i = 0; i < string.length; i ++) {
            NSString *subStr = [string substringWithRange:NSMakeRange(i, 1)];
            if (![subStr isEqualToString:@" "] && ![subStr isEqualToString:@""]) {
                result = YES;
            }
        }
    }
    return result;
}

@end
