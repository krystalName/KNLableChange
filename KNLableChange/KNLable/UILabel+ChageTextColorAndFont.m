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


+(NSMutableAttributedString *)ChageLableColorAndFontWithContent:(NSString *)content FirstString:(NSString *)FirstString WithFont:(UIFont *)font WithColor:(UIColor *)color
{
    NSString *contentString = content ? content : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentString];
    NSRange rang = [contentString rangeOfString:FirstString];
    [attributedString addAttribute:NSFontAttributeName value:font range:rang];
    [attributedString addAttribute:NSForegroundColorAttributeName value:color range:rang];
    return attributedString;
    
}

+(NSMutableAttributedString *)ChangeLableColorAndFontWithContent:(NSString *)content changeString:(NSString *)changeString WithFont:(UIFont *)font WithColor:(UIColor *)color
{
    NSString *contentString = content ? content : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:contentString];
 
    NSRange resultRange = NSMakeRange(0, 0);
    NSInteger lastIndex = 0;
    NSRange searchRange = NSMakeRange(0, 0);
    
    while (resultRange.location != NSNotFound) {
        searchRange = NSMakeRange(lastIndex, contentString.length - lastIndex);
        resultRange =    [contentString rangeOfString:changeString options:NSCaseInsensitiveSearch range:searchRange];
        lastIndex = resultRange.location + changeString.length;
        if (resultRange.location == NSNotFound) {
            break;
        }
        else
        {
            [attributedString addAttribute:NSFontAttributeName value:font range:resultRange];
            [attributedString addAttribute:NSForegroundColorAttributeName value:color range:resultRange];
        }
        
    }
    
    return attributedString;
}



@end
