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



@end
