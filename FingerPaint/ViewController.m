//
//  ViewController.m
//  FingerPaint
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic) CGPoint startPoint;
@property (nonatomic) UIBezierPath *path;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _path = [UIBezierPath bezierPath];
    self.canvasView.delegate = self;
    UIPanGestureRecognizer *drawWithFinger = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(draw:)];
    [self.canvasView addGestureRecognizer:drawWithFinger];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)draw:(UIPanGestureRecognizer *)sender {
    
    
    
//    CGPoint gestureVelocity = [sender velocityInView: self.canvasView];
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.startPoint = [sender locationInView:self.view];
        [self.path moveToPoint:self.startPoint];

        
        
    }
    else if (sender.state == UIGestureRecognizerStateChanged) {
        self.currentPoint = [sender locationInView:self.view];
        [self.path addLineToPoint:self.currentPoint];
    }
    
    [self.canvasView setNeedsDisplay];
    
    
    
}

-(UIBezierPath *)getStartPath{

    
    return self.path;
}



@end
