//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Graeme Harrison on 2016-01-25.
//  Copyright © 2016 Graeme Harrison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic, assign) CGSize contentSize;
@property (nonatomic,strong) UIPanGestureRecognizer *panGesture;
@property (nonatomic, assign) CGFloat translationY;

@end
