//
//  DirectionPanRecognizer.m
//  Phyzseek
//
//  Created by Nikita Ermolenko on 13/07/16.
//  Copyright © 2016 rosberry. All rights reserved.
//

#import "DirectionPanRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

#define OptionsDoesnHaveValue(options, value) (((options) & (value)) != (value))

@implementation DirectionPanRecognizer

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [super touchesMoved:touches withEvent:event];
    
    if (self.state == UIGestureRecognizerStateBegan) {
        
        CGPoint const velocity = [self velocityInView:self.view];
        if (fabs(velocity.y) > fabs(velocity.x)) {
            if (velocity.y >= 0 && OptionsDoesnHaveValue(self.direction, UIPanGestureRecognizerDirectionBottom)) {
                self.state = UIGestureRecognizerStateCancelled;
                
            } else if (velocity.y < 0 && OptionsDoesnHaveValue(self.direction, UIPanGestureRecognizerDirectionTop)) {
                self.state = UIGestureRecognizerStateCancelled;
            }
        } else {
            if (velocity.x >= 0 && OptionsDoesnHaveValue(self.direction, UIPanGestureRecognizerDirectionRight)) {
                self.state = UIGestureRecognizerStateCancelled;
                
            } else if (velocity.x < 0 && OptionsDoesnHaveValue(self.direction, UIPanGestureRecognizerDirectionLeft)) {
                self.state = UIGestureRecognizerStateCancelled;
            }
        }
    }
}

@end
