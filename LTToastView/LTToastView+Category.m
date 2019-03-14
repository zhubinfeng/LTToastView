//
//  LTToastView+Category.m
//  ToastDemo-OC
//
//  Created by RP. wang on 2019/3/13.
//  Copyright © 2019 西安乐推网络科技有限公司. All rights reserved.
//

#import "LTToastView+Category.h"

@implementation LTToastView (Category)

// MARK: - ====================
+(instancetype)showLTToastViewAnimation:(UIView *)AddView toastWithFrame:(CGRect)frame isAnimation:(BOOL)animation{
    NSAssert(AddView, @"View must not be nil.");
    LTToastView *toastView = [[self alloc]initWithView:AddView toastWithFrame:frame];
    [toastView showToastWithAnimated:animation];
    [AddView addSubview:toastView];
    
    return toastView;
}

// ====================
- (id)initWithView:(UIView *)addView toastWithFrame:(CGRect)frame{
    NSAssert(addView, @"View must not be nil.");
    return [self initWithFrame:frame];
}

-(void)showToastWithAnimated:(BOOL)animated {
    [self showToastWithAnimated:animated completion:^(BOOL finished) {
        
    }];
}

// ====================
-(void)showToastWithAnimated:(BOOL)animated completion:(void(^)(BOOL finished))completion{
    self.isLoaded = NO;
    self.isUseAnimation = animated;
    //--------------------------------
    __weak typeof (self) weakSelf = self;
    [UIView animateWithDuration:0.35 animations:^{
        
        self.alpha = 1;
        
    } completion:^(BOOL finished) {
        if(animated){
            
            [weakSelf upAndDownLoopAnimation];
            
            //--------------------------------
            if(completion){
                completion(YES);
            }
        }
    }];
}

// ====================
-(void)upAndDownLoopAnimation{
    
    CABasicAnimation *moveAnimation = [CABasicAnimation animationWithKeyPath:@"transform.translation.y"];
    moveAnimation.removedOnCompletion = NO;
    moveAnimation.duration = 0.6;
    moveAnimation.autoreverses = YES;
    moveAnimation.repeatCount = MAXFLOAT;
    moveAnimation.fromValue = [NSNumber numberWithFloat:0];
    moveAnimation.toValue = [NSNumber numberWithFloat:+15];
    [self.layer addAnimation:moveAnimation forKey:@"pointLeft"];
}


// MARK: - ====================
+(BOOL)hiddenLTToastViewAnimation:(UIView *)AddView isAnimation:(BOOL)animation{
    NSAssert(AddView, @"View must not be nil.");
    LTToastView *toastView = [self toastForAddView:AddView];
    __block BOOL returnBool = NO;
    if(toastView != nil) {
        
        [toastView hiddenToastWithAnimated:YES completion:^(BOOL finished) {
            returnBool = finished;
        }];
        return returnBool;
    }
    return returnBool;
}

// ====================
-(void)hiddenToastWithAnimated:(BOOL)animated completion:(void(^)(BOOL finished))completion{
    self.isLoaded = NO;
    self.isUseAnimation = animated;
    //--------------------------------
    __weak typeof (self) weakSelf = self;
    [UIView animateWithDuration:0.35 animations:^{
        
        weakSelf.alpha = 0;
        
    } completion:^(BOOL finished) {
        
        if(completion){
            completion(YES);
        }
        [weakSelf removeFromSuperview];
    }];
}

-(void)hiddenLTToastViewAnimation:(BOOL)animation{
    
    [self hiddenToastWithAnimated:animation completion:^(BOOL finished) {
        
    }];
}

// ====================
+(LTToastView *)toastForAddView:(UIView *)addView{
    NSEnumerator *subviewsEnum = [addView.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:self]) {
            LTToastView *toast = (LTToastView *)subview;
            if (toast.hasisLoaded == NO) {
                return toast;
            }
        }
    }
    return nil;
}


// MARK: - ====================
+(NSInteger)hiddenSuperViewAllToastView:(UIView *)addView isAnimation:(BOOL)animation{
    NSAssert(addView, @"View must not be nil.");
    NSArray *toastList = [self alltoastViewSForView:addView];
    for (LTToastView *toastView in toastList) {
        [toastView hiddenLTToastViewAnimation:animation];
    }
    return [toastList count];
}

+(NSArray *)alltoastViewSForView:(UIView *)addView {
    NSMutableArray *toastList = [NSMutableArray array];
    NSArray *subviews = addView.subviews;
    for (UIView *aView in subviews) {
        if ([aView isKindOfClass:self]) {
            [toastList addObject:aView];
        }
    }
    return [NSArray arrayWithArray:toastList];
}



@end
