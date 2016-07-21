//
//  MBProgressHUD+WQTextHud.h
//  WQToolKit
//
//  Created by 魏琦 on 16/6/2.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (WQTextHud)
+ (void)showText:(NSString*)text icon:(NSString*)icon view:(UIView*)view afterDelay:(NSTimeInterval)delay;
+ (void)showImages:(NSArray*)images view:(UIView*)view text:(NSString*)text;
+ (void)showImages:(NSArray *)images view:(UIView *)view text:(NSString *)text detailText:(NSString*)detailText;
+ (void)hudHideForView:(UIView*)view;


@end
