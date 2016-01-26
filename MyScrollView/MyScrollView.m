//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Graeme Harrison on 2016-01-25.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panScreen:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:self.panGesture];
        _translationY = 0;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//}


-(IBAction)panScreen:(UIPanGestureRecognizer *)sender {
    self.translationY = [sender translationInView:self].y;
//    CGFloat locationY = [sender locationInView:self].y;
    
    //if (self.translationY < self.frame.size.height && self.translationY >0) {
        self.bounds = CGRectMake(0, -self.translationY, self.frame.size.width, self.frame.size.height);
    //}
}

@end
