//
//  MBProgressHUD+WQTextHud.h
//  WQToolKit
//
//  Created by 魏琦 on 16/6/2.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>
/**
 *  引入这个延展必须导入MBProgressHUD
 */
@interface MBProgressHUD (WQTextHud)
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param text  设置加载文本
 *  @param icon  图片
 *  @param view  显示在什么View上
 *  @param delay 几秒后消失
 */
+ (void)showText:(NSString*)text icon:(NSString*)icon view:(UIView*)view afterDelay:(NSTimeInterval)delay;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param images 显示一组动态的图片
 *  @param view   显示在什么view上
 *  @param text   设置显示的文本
 */
+ (void)showImages:(NSArray*)images view:(UIView*)view text:(NSString*)text;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param images 显示一组动态的图片
 *  @param view   显示在什么view上
 *  @param text   设置显示的文本
 *  @param detailText 设置详细文本说明
 */
+ (void)showImages:(NSArray *)images view:(UIView *)view text:(NSString *)text detailText:(NSString*)detailText;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param view 在显示的view上将其消失
 */
+ (void)hudHideForView:(UIView*)view;


@end
