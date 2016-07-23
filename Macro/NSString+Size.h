//
//  NSString+Size.h
//  block学习
//
//  Created by 魏琦 on 16/5/26.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Size)
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param font  字体
 *  @param width 预设宽度(显示文本控件的宽度)
 *
 *  @return 返回文本内容的大小
 */
- (CGSize)boundStringSizeWithFont:(UIFont*)font  width:(CGFloat)width;

@end
