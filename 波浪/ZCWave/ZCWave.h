//
//  ZCWave.h
//  波浪
//
//  鲁志超 github:https://github.com/zcLu qq:1185907688
//
//  Created by LuzhiChao on 16/9/23.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZCWaveBlock)(CGFloat currentY);

@interface ZCWave : UIView

// 浪湾曲度
@property (nonatomic, assign) CGFloat waveCurvature;
// 浪速
@property (nonatomic, assign) CGFloat waveSpeed;
// 浪高
@property (nonatomic, assign) CGFloat waveHeight;
// 实浪颜色
@property (nonatomic, strong) UIColor *realWaveColor;
// 遮罩浪颜色
@property (nonatomic, strong) UIColor *maskWaveColor;

@property (nonatomic, copy) ZCWaveBlock waveBlock;
// 开始动画
- (void)startWaveAnimation;
// 停止动画
- (void)stopWaeAnimation;
@end
