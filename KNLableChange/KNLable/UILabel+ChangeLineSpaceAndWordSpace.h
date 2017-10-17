//
//  UILabel+ChangeLineSpaceAndWordSpace.h
//  KNLableChange
//
//  Created by 刘凡 on 2017/10/17.
//  Copyright © 2017年 KrystalName. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ChangeLineSpaceAndWordSpace)


/**
 *  改变行间距
 */
+ (NSMutableAttributedString *)changeLineSpaceForLabel:(NSString *)title WithSpace:(float)space;

/**
 *  改变字间距
 */
+ (NSMutableAttributedString *)changeWordSpaceForLabel:(NSString *)title WithSpace:(float)space;

/**
 *  改变行间距和字间距
 */
+ (NSMutableAttributedString *)changeSpaceForLabel:(NSString *)title withLineSpace:(float)lineSpace WordSpace:(float)wordSpace;



@end
