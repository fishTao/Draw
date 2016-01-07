//
//  textImage.m
//  绘图
//
//  Created by qingyun on 16/1/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "textImage.h"

@implementation textImage

-(void)drawText{

    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //绘制矩形区域
    CGRect rect = CGRectMake(50, 50, 200, 50);
    CGContextAddRect(ctx, rect);
    [[UIColor orangeColor] set];
    
    //渲染
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    NSString *str = @"天将降大任于斯人也";
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    
    attri[NSForegroundColorAttributeName] = [UIColor brownColor];
    attri[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    
    [str drawInRect:rect withAttributes:attri];
    
}
-(void)drawTextAndImage{
    
    
    //获取图片
    UIImage *image=[UIImage imageNamed:@"徐璐5.jpeg"];
    
    //2.画图片
    [image drawInRect:CGRectMake(120, 120, 100, 100)];
    
    //3画文字
    NSString *str=@"jack";
    [str drawInRect:CGRectMake(180, 180, 100, 40) withAttributes:nil];
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawText];
    [self drawTextAndImage];
}


@end
