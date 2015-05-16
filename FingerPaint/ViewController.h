//
//  ViewController.h
//  FingerPaint
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawView.h"

@interface ViewController : UIViewController <DrawViewProtocol>


@property (strong, nonatomic) IBOutlet DrawView *canvasView;



@end

