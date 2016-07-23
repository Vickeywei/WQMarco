//
//  UIBarButtonItem+item.h
//  VTMgic
//
//  Created by 魏琦 on 16/7/19.
//  Copyright © 2016年 hzdracom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (item)
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param image  按钮的背景图片
 *  @param highImage 点击高亮是的图片
 *  @param target    处理点击事件的对象
 *  @param action    事件
 *
 *  @return 返回UIBarButtonItem
 */
+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param image    按钮的背景图片
 *  @param selImage 选中后的图片
 *  @param target   处理点击事件的对象
 *  @param action   事件
 *
 *  @return 返回UIBarButtonItem
 */
+ (instancetype)itemWithImage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;
@end
