//
//  SJSlideSwitchView.h
//  SJSlideTableView
//
//  Created by Soldier on 15/4/23.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SJSlideSwitchView;

static const CGFloat kHeightOfTopScrollView = 44.0f;

@protocol SJSlideSwitchViewDelegate <NSObject>

@required

/*!
 * @method 顶部tab个数
 * @abstract
 * @discussion
 * @param 本控件
 * @result tab个数
 */
- (NSUInteger)numberOfTab:(SJSlideSwitchView *)view;

/*!
 * @method 每个tab所属的viewController
 * @abstract
 * @discussion
 * @param tab索引
 * @result viewController
 */
- (UIViewController *)slideSwitchView:(SJSlideSwitchView *)view viewOfTab:(NSUInteger)number;

@optional

/*!
 * @method 滑动左边界时传递手势
 * @abstract
 * @discussion
 * @param   手势
 * @result
 */
- (void)slideSwitchView:(SJSlideSwitchView *)view panLeftEdge:(UIPanGestureRecognizer*) panParam;

/*!
 * @method 滑动右边界时传递手势
 * @abstract
 * @discussion
 * @param   手势
 * @result
 */
- (void)slideSwitchView:(SJSlideSwitchView *)view panRightEdge:(UIPanGestureRecognizer*) panParam;

/*!
 * @method 点击tab
 * @abstract
 * @discussion
 * @param tab索引
 * @result
 */
- (void)slideSwitchView:(SJSlideSwitchView *)view didselectTab:(NSUInteger)number;

@end




@interface SJSlideSwitchView : UIView<UIScrollViewDelegate> {
    BOOL _isLeftScroll;                             //是否左滑动
    BOOL _isRootScroll;                             //是否主视图滑动
    BOOL _isBuildUI;                                //是否建立了ui
    
    UIImageView *_shadowImageView;
}

@property (nonatomic, strong) UIScrollView *rootScrollView; //主视图
@property (nonatomic, strong) UIScrollView *topScrollView;  //顶部页签视图
@property (nonatomic, assign) CGFloat userContentOffsetX;
@property (nonatomic, assign) NSInteger userSelectedChannelID; //点击按钮选择名字ID
@property (nonatomic, assign) NSInteger scrollViewSelectedChannelID;
@property (nonatomic, weak)   id<SJSlideSwitchViewDelegate> slideSwitchViewDelegate;
@property (nonatomic, strong) UIColor *tabItemNormalColor; //正常时tab文字颜色
@property (nonatomic, strong) UIColor *tabItemSelectedColor; //选中时tab文字颜色
@property (nonatomic, strong) UIImage *tabItemNormalBackgroundImage; //正常时tab的背景
@property (nonatomic, strong) UIImage *tabItemSelectedBackgroundImage; //选中时tab的背景
@property (nonatomic, strong) UIImage *shadowImage;
@property (nonatomic, strong) NSMutableArray *viewArray; //主视图的子视图数组
@property (nonatomic, strong) UIButton *rigthSideButton;

- (void)buildUI;

@end



