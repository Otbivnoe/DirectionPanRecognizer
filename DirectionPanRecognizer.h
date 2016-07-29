//
//  DirectionPanRecognizer.h
//
//  Created by Nikita Ermolenko on 13/07/16.
//  Copyright © 2016 rosberry. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, UIPanGestureRecognizerDirection) {
    UIPanGestureRecognizerDirectionLeft     = 1 << 0,
    UIPanGestureRecognizerDirectionRight    = 1 << 1,
    UIPanGestureRecognizerDirectionTop      = 1 << 2,
    UIPanGestureRecognizerDirectionBottom   = 1 << 3,
};

@interface DirectionPanRecognizer : UIPanGestureRecognizer

@property (nonatomic) UIPanGestureRecognizerDirection direction;

@end
