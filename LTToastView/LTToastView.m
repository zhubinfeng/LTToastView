//
//  LTToastView.m
//  ToastDemo-OC
//
//  Created by RP. wang on 2019/3/13.
//  Copyright © 2019 西安乐推网络科技有限公司. All rights reserved.
//

#import "LTToastView.h"

@interface LTToastView ()

///
@property (strong, nonatomic) UIView *topView;
///
@property (strong, nonatomic) UIView *backgroundView;
///
@property (strong, nonatomic) UILabel *titleTxtLab;

@end

@implementation LTToastView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        
        [self createToastCommonData];
    }
    return self;
}

-(void)createToastCommonData{
    
    //--------------------------------
    _isLoaded = NO;
    _isUseAnimation = NO;
    _backViewRadius = 5.f;
    _indicationSize = 15.f;
    _fontSize = 15.f;
    _titleColor = [UIColor whiteColor];
    _backgroundColor = [UIColor colorWithRed:31/255.f green:31/255.f blue:31/255.f alpha:1];
    
    self.backgroundColor = [UIColor clearColor];
    self.alpha = 0;
    //--------------------------------
    [self setupViews];
}

//
- (void)setupViews{
    //--------------------------------
    _topView = [[UIView alloc]initWithFrame:CGRectMake(self.indicationSize, 3, 21, 21)];
    [self addSubview:_topView];
    _topView.backgroundColor = [UIColor colorWithRed:31/255.f green:31/255.f blue:31/255.f alpha:1];
    // 旋转45度
    _topView.layer.cornerRadius = self.backViewRadius;
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
    [_topView setTransform:transform];
    
    //--------------------------------
    _backgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, self.frame.size.width, self.frame.size.height - 10)];
    [self addSubview:_backgroundView];
    _backgroundView.layer.cornerRadius = 10.f;
    _backgroundView.backgroundColor = [UIColor colorWithRed:31/255.f green:31/255.f blue:31/255.f alpha:1];
    
    //--------------------------------
    _titleTxtLab = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, _backgroundView.frame.size.width - 10, _backgroundView.frame.size.height)];
    [_backgroundView addSubview:_titleTxtLab];
    _titleTxtLab.numberOfLines = 0;
    _titleTxtLab.textColor = [UIColor whiteColor];
    _titleTxtLab.font = [UIFont fontWithName:@"Helvetica-Bold" size:_fontSize];
    _titleTxtLab.textAlignment = NSTextAlignmentCenter;
}

-(void)setBackViewRadius:(float)backViewRadius{
    _backgroundView.layer.cornerRadius = backViewRadius;
}

-(void)setTitleChar:(NSString *)titleChar{
    
    if([LTPublicClass isStringNull:titleChar] == false){
        _titleTxtLab.text = titleChar;
    }else{
        return;
    }
}

-(void)setFontSize:(float)fontSize{
    _titleTxtLab.font = [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
}

-(void)setTitleColor:(UIColor *)titleColor{
    _titleTxtLab.textColor = titleColor;
}

-(void)setBackgroundColor:(UIColor *)backgroundColor{
    _backgroundView.backgroundColor = backgroundColor;
    _topView.backgroundColor = backgroundColor;
}

-(void)dealloc{
    [self reloadInputViews];
}


@end
