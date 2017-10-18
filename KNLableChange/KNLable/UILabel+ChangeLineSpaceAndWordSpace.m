//
//  UILabel+ChangeLineSpaceAndWordSpace.m
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/17.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import "UILabel+ChangeLineSpaceAndWordSpace.h"

@implementation UILabel (ChangeLineSpaceAndWordSpace)


+ (NSMutableAttributedString *)changeLineSpaceForLabel:(NSString *)title WithSpace:(float)space {
    
    NSString *labelText = title ? title : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:space];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    
    return attributedString;
}

+ (NSMutableAttributedString *)changeWordSpaceForLabel:(NSString *)title WithSpace:(float)space {
    
    NSString *labelText = title ? title : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(space)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    return  attributedString;
    
}

+ (NSMutableAttributedString *)changeSpaceForLabel:(NSString *)title withLineSpace:(float)lineSpace WordSpace:(float)wordSpace {
    
    NSString *labelText = title ? title : @"";
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText attributes:@{NSKernAttributeName:@(wordSpace)}];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
    return attributedString;
    
}

@end
