//
//  ShapeView.m
//  绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //画矩形
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //添加绘画路径
    CGContextAddRect(ctx, CGRectMake(50, 50, 100, 100));
    
    //设置描边
    CGContextSetStrokeColorWithColor(ctx, [UIColor orangeColor].CGColor);
    
    //设置填充色
    CGContextSetFillColorWithColor(ctx, [UIColor greenColor].CGColor);
    //渲染
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    
}


@end
