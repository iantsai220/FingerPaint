//
//  DrawView.h
//  FingerPaint
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrawViewProtocol <NSObject>

-(UIBezierPath *)getStartPath;

@end

@interface DrawView : UIView

@property (nonatomic) id<DrawViewProtocol> delegate;



@end
