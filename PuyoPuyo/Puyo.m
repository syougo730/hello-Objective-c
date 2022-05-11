//
//  Puyo.m
//  PuyoPuyo
//
//  Created by 本間奨悟 on 2022/05/11.
//

#import <Foundation/Foundation.h>
#import "Puyo.h"

@interface Puyo ()

@end

@implementation Puyo

- (id) initWithFrame : (CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


/**
    ぷよ描画
 */
-(void)drawRect:(CGRect)rect
{
    // 円
    UIBezierPath *circle = [
        UIBezierPath
        bezierPathWithArcCenter:CGPointMake(250, 250)
        radius:100
        startAngle:0
        endAngle:M_PI*2
        clockwise:YES
    ];
    // 内側の色
    [[UIColor colorWithRed:0 green:0 blue:1 alpha:0.7] setFill];
    // 内側を塗りつぶす
    [circle fill];
    // 線の色
    [[UIColor colorWithRed:0 green:0 blue:1 alpha:0.7] setStroke];
    // 線の太さ
    [circle setLineWidth:2.0f];
    // 線を塗りつぶす
    [circle stroke];
}

@end
