//
//  NSString+Size.m
//  block学习
//
//  Created by 魏琦 on 16/5/26.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)
- (CGSize)boundStringSizeWithFont:(UIFont *)font width:(CGFloat)width {
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size;
}


@end
