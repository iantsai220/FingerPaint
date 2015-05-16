//
//  DrawView.m
//  FingerPaint
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView 

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//-(void)drawRect:(CGRect)rect{
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 2.0);
//    
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
//    CGFloat components[] =  {0.0,1.0,0.0,1.0};
//    CGColorRef color = CGColorCreate(colorspace, components);
//    CGContextSetStrokeColorWithColor(context, color);
//    
//    CGContextMoveToPoint(context, 20, 20);
//    CGContextAddLineToPoint(context, 180, 160);
//    CGContextStrokePath(context);
//    
//    CGColorSpaceRelease(colorspace);
//    CGColorRelease(color);
//    
//}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    [[self.delegate getStartPath] stroke];
}


@end
