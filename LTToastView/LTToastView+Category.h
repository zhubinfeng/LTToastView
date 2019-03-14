//
//  LTToastView+Category.h
//  ToastDemo-OC
//
//  Created by RP. wang on 2019/3/13.
//  Copyright © 2019 西安乐推网络科技有限公司. All rights reserved.
//

#import "LTToastView.h"

NS_ASSUME_NONNULL_BEGIN

@interface LTToastView (Category)

/* --------------------------------------------------------------------
 * Creates a new  and shows it, The counterpart to this method is 'hiddenMatchingViewAnimation: isAnimation '.
 * isAnimation : Whether to load animation
 *  --------------------------------------------------------------------
 * 新建一个ToaatView，并加载在相应的View上，调用方法'hiddenMatchingViewAnimation: isAnimation'隐藏ToaatView。
 * isAnimation : 显示时是否使用动画。
 * --------------------------------------------------------------------
 */
+(instancetype)showLTToastViewAnimation:(UIView *)AddView toastWithFrame:(CGRect)frame isAnimation:(BOOL)animation;
/* --------------------------------------------------------------------
 * Hide the parent trying to load the last loaded 'ToastView',he counterpart to this method is 'showToastViewAnimation:isAnimation'.
 * isAnimation : Whether to load animation.
 * return YES if 'ToastView' was found and removed, NO otherwise.
 * --------------------------------------------------------------------
 * 隐藏父视图上最后一个加载的'ToastView',与之对应的是'showToastViewAnimation:isAnimation'方法。
 * isAnimation : 显示时是否使用动画。
 * 成功移除了'ToastView'，返回'YES',反之为'NO'。
 * --------------------------------------------------------------------
 */
+(BOOL)hiddenLTToastViewAnimation:(UIView *)AddView isAnimation:(BOOL)animation;
/* --------------------------------------------------------------------
 * Hide and remove all 'ToaatView' on the parent view
 * return YES if a 'ToaatView' was found and removed, NO otherwise.
 * --------------------------------------------------------------------
 * 隐藏并移除父视图上的所有'ToaatView'
 * --------------------------------------------------------------------
 */
+(NSInteger)hiddenSuperViewAllToastView:(UIView *)addView isAnimation:(BOOL)animation;
/* --------------------------------------------------------------------
 * Find if the parent view has 'ToaatView' and returns it.
 * --------------------------------------------------------------------
 * 查找父视图上是否有'ToaatView'
 * --------------------------------------------------------------------
 */
+(LTToastView *)toastForAddView:(UIView *)addView;
/* --------------------------------------------------------------------
 *
 *
 * --------------------------------------------------------------------
 */
-(void)showToastWithAnimated:(BOOL)animated completion:(void(^)(BOOL finished))completion;
/* --------------------------------------------------------------------
 *
 *
 * --------------------------------------------------------------------
 */
-(void)hiddenToastWithAnimated:(BOOL)animated completion:(void(^)(BOOL finished))completion;

@end

NS_ASSUME_NONNULL_END
