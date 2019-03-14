//
//  LTToastView.h
//  ToastDemo-OC
//
//  Created by RP. wang on 2019/3/13.
//  Copyright © 2019 西安乐推网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTPublicClass.h"

NS_ASSUME_NONNULL_BEGIN

@interface LTToastView : UIView

//--------------------------------
/*
 * Set the location that indicates the View.
 * 设置三角位置
 */
@property (assign, nonatomic) float indicationSize;
/*
 * Set the radius size of 'ToastView'
 * 设置圆角
 */
@property (assign, nonatomic) float backViewRadius;
/*
 * Set the text content of 'ToastView'
 * 文字内容
 */
@property (copy, nonatomic) NSString *titleChar;
/*
 * Set the text size of 'ToastView'
 * 字体大小
 */
@property (assign, nonatomic) float fontSize;
/*
 * Set the text color of 'ToastView'
 * 字体颜色
 */
@property (strong, nonatomic) UIColor *titleColor;
/*
 * Whether 'ToastView' is has been loaded.
 * 'ToastView' 是否已经显示
*/
@property (nonatomic, assign, getter=hasisLoaded) BOOL isLoaded;
/*
 * Whether to play the animation when show 'ToastView', the default is NO.
 * 显示时是否使用动画， 默认为NO
 */
@property (assign, nonatomic) BOOL isUseAnimation;
/*
 * Set the background color of 'ToastView'.
 * 背景颜色
 */
@property (strong, nonatomic) UIColor *backgroundColor;




@end

NS_ASSUME_NONNULL_END
