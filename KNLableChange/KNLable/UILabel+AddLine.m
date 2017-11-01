//
//  UILabel+AddLine.m
//  KNLableChange
//
//  Created by 刘凡 on 2017/11/1.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import "UILabel+AddLine.h"

@implementation UILabel (AddLine)

+(NSMutableAttributedString *)AddLineForTitle:(NSString *)title AndColor:(UIColor *)color WithStart:(NSInteger)start WithEnd:(NSInteger)end{
    NSString *contentString = title ? title : @"" ;

    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:contentString];
    
   [attributedString addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(start, end)];
    
    [attributedString addAttribute:NSStrikethroughColorAttributeName value:color range:NSMakeRange(start, end)];
    
  
    
    return attributedString;
}

@end
