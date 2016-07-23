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
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param image 需要形成缩略图的image对象
 *  @param size  缩略图的大小
 *
 *  @return 返回缩略图
 */
- (UIImage*)imageSizeSmiwithImage:(UIImage*)image imageSize:(CGSize)size;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param aImage 需要改变图片方向的image
 *
 *  @return 返回一个imageOrientation == UIImageOrientationUp的image
 */
- (UIImage *)fixOrientation:(UIImage *)aImage;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param newSize 图片新的大小
 *  @param resizeMode 调整的对应模式
 *
 *  @return 返回
 */
- (UIImage*)resizeImageToSize:(CGSize)newSize resizeMode:(SvResizeMode)resizeMode;
/**
 *  @author vicky 2016-07-23 18:31
 *
 *  @param targetSize <#targetSize description#>
 *  @param image      <#image description#>
 *
 *  @return <#return value description#>
 */
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize image:(UIImage*)image;
@end
