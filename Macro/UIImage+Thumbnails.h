//
//  UIImage+Thumbnails.h
//  viewDownLoadDemo
//
//  Created by 魏琦 on 16/6/2.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import <UIKit/UIKit.h>
enum {
    enSvResizeScale,            // image scaled to fill
    enSvResizeAspectFit,        // image scaled to fit with fixed aspect. remainder is transparent
    enSvResizeAspectFill,       // image scaled to fill with fixed aspect. some portion of content may be cliped
};
typedef NSInteger SvResizeMode;
@interface UIImage (Thumbnails)
- (UIImage*)imageSizeSmiwithImage:(UIImage*)image imageSize:(CGSize)size;
- (UIImage *)fixOrientation:(UIImage *)aImage;
- (UIImage*)resizeImageToSize:(CGSize)newSize resizeMode:(SvResizeMode)resizeMode;
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize image:(UIImage*)image;
@end
