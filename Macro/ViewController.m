//
//  ViewController.m
//  Macro
//
//  Created by 魏琦 on 16/7/13.
//  Copyright © 2016年 com.drcacom.com. All rights reserved.
//

#import "ViewController.h"
#import "WQmacro.h"
#import "UIBarButtonItem+item.h"
#import "MBProgressHUD+WQTextHud.h"
#import <MBProgressHUD.h>
#import "NSString+Size.h"
#import "UIImage+Thumbnails.h"
//在这里主要演示这几个延展的作用
@interface ViewController ()
@end

@implementation ViewController {
    //为了区分实例变量,局部变量,全局变量,请在实例变量前加一些符合自己风格的字符进行区分(代码规范)
    UIImageView* g_imageView;
    UIImage* g_image;
    UILabel* g_titleLabel;
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    //形成缩略图
//    g_image = [UIImage imageNamed:@"c0b3760ffb94558ac73f66b1dfd81ad1"];
//    CGFloat width = g_image.size.width;
//    CGFloat height = g_image.size.height;
//    WQLog(@"%f,%f",width,height);
//    UIImage* image = [g_image imageSizeSmiwithImage:g_image imageSize:CGSizeMake(80, 80)];
//    g_imageView  = [[UIImageView alloc] initWithImage:image];
//    g_imageView.center = self.view.center;
//    [self.view addSubview:g_imageView];
    //缩放图片的大小,而且分辨率不会丢失
//    g_image = [UIImage imageNamed:@"c0b3760ffb94558ac73f66b1dfd81ad1"];
//    CGFloat width = g_image.size.width;
//    CGFloat height = g_image.size.height;
//    WQLog(@"%f,%f",width,height);
//    UIImage* image2 = [g_image resizeImageToSize:CGSizeMake(120, 80) resizeMode:enSvResizeAspectFill];
//    g_imageView= [[UIImageView alloc] initWithImage:image2];
//    [self.view addSubview:g_imageView];
//    g_imageView.center = self.view.center;
    
    //缩放图片,而且分辨率不会丢失
    g_image = [UIImage imageNamed:@"c0b3760ffb94558ac73f66b1dfd81ad1"];
    CGFloat width = g_image.size.width;
    CGFloat height = g_image.size.height;
    WQLog(@"%.f,%.f",width,height);
    UIImage* image3 = [g_image imageByScalingAndCroppingForSize:CGSizeMake(180, 120) image:g_image];
    g_imageView= [[UIImageView alloc] initWithImage:image3];
    [self.view addSubview:g_imageView];
    g_imageView.center = self.view.center;
    
    

    UIBarButtonItem* rightItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"发布橙色-1"] highImage:nil target:self action:@selector(action1:)];
    self.navigationController.navigationItem.rightBarButtonItem = rightItem;
    
    UIBarButtonItem* leftItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"返回深色"] selImage:nil target:self action:@selector(action2:)];
    self.navigationController.navigationItem.leftBarButtonItem = leftItem;
    //计算文本的宽高
   NSString* str =  WQ(@"我是本来是%zd张很大的图片,我的宽度是%.f高度是%.f", 1,width,height);
    CGSize size = [str boundStringSizeWithFont:[UIFont systemFontOfSize:AdapterSize(17)] width:180];
    WQLog(@"%f,%f",size.height,size.height);
    
    g_titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREEEN_WIDTH/2-90,120,180,size.height+10)];
    g_titleLabel.backgroundColor = WQHEXColor(0x444444);
    g_titleLabel.textColor = WQHEXColor(0x666666);
    g_titleLabel.numberOfLines = 0;
    g_titleLabel.font = [UIFont systemFontOfSize:AdapterSize(17)];
    g_titleLabel.text = str;
    [self.view addSubview:g_titleLabel];
    
    


    
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma lazy imageView

- (void)action2:(UIBarButtonItem*)sender {
    self.view.backgroundColor = WQRGBColor(176, 205, 89);
    [MBProgressHUD showText:@"正在加载,两秒钟后消失" icon:@"叉号深色-1" view:self.view afterDelay:2];
    
    
    
    
}

- (void)action1:(UIBarButtonItem*)sender {
    WQLog(@"%@",sender);
    self.view.backgroundColor = WQHEXColor(0x22222);
    //如果明确知道数组的count数,请直接用下面方法声明,数组的count书是成倍增加的,所以给定范围会大大减少数组所占的内存.
    NSMutableArray* mutableArray = [NSMutableArray arrayWithCapacity:19];
    for (int i = 1; i < 20; i ++) {
        UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"afb_loading_%d",i]];
        [mutableArray addObject:image];
        
    }
    
   // [MBProgressHUD showImages:[mutableArray copy] view:self.view text:@"正在加载"];
    [MBProgressHUD showImages:[mutableArray copy] view:self.view text:@"网络不给力..." detailText:@"亲你的网络出现了波动"];
    
    //两秒后停止
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hudHideForView:self.view];
        
    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
