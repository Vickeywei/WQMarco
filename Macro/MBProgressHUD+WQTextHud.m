//
//  MBProgressHUD+WQTextHud.m
//  WQToolKit
//
//  Created by 魏琦 on 16/6/2.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import "MBProgressHUD+WQTextHud.h"

@implementation MBProgressHUD (WQTextHud)
+ (void)showText:(NSString *)text icon:(NSString *)icon view:(UIView *)view afterDelay:(NSTimeInterval)delay {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
        
    }
    MBProgressHUD* hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    if (text.length > 0) {
        hud.labelText = text;
        hud.labelColor = [UIColor grayColor];
        hud.labelFont = [UIFont systemFontOfSize:16];
    }
    if (icon.length > 0) {
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:icon]];
    }
    [MBProgressHUD commonHud:hud];
    [hud hide:YES afterDelay:delay];
}

+ (void)showImages:(NSArray *)images view:(UIView *)view text:(NSString *)text {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD* hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    if (text && text.length > 0) {
        hud.labelText = text;
        hud.labelColor = [UIColor grayColor];
        hud.labelFont = [UIFont systemFontOfSize:16];
    }
    if (images.count > 0 && images) {
        UIImage* image = images.firstObject;
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,image.size.width, image.size.height)];
        imageView.animationImages = images;
        [imageView startAnimating];
        hud.customView = imageView;
        
    }
    [MBProgressHUD commonHud:hud];
    
}

+ (void)showImages:(NSArray *)images view:(UIView *)view text:(NSString *)text detailText:(NSString *)detailText {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD* hud =  [MBProgressHUD showHUDAddedTo:view animated:YES];
    if (images && images.count >0) {
        UIImage* image = images.lastObject;
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
        imageView.animationImages = images;
        [imageView startAnimating];
        hud.customView = imageView;
        
    }
    if (text && text.length > 0) {
        hud.labelText = text;
        hud.labelColor = [UIColor grayColor];
        hud.labelFont = [UIFont systemFontOfSize:16];
    }
    if (detailText && detailText.length > 0) {
        hud.detailsLabelText = detailText;
        hud.detailsLabelFont = [UIFont systemFontOfSize:14];
        hud.detailsLabelColor = [UIColor grayColor];
    }
    [MBProgressHUD commonHud:hud];
    
}

+ (void)hudHideForView:(UIView*)view{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    [self hideHUDForView:view animated:YES];
}

+ (void)commonHud:(MBProgressHUD*)hud {
    hud.mode = MBProgressHUDModeCustomView;
    hud.color = [UIColor whiteColor];
    hud.layer.shadowColor = [UIColor blackColor].CGColor;
    hud.layer.shadowOffset = CGSizeMake(1, 1);
    hud.removeFromSuperViewOnHide = YES;
    hud.layer.opacity = 0.85;
    hud.layer.shadowOpacity = 0.2;
}
@end
