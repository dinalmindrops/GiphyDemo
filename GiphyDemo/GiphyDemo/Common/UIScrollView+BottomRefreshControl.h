//
//  UIScrollView+BottomRefreshControl.h
//  GiphyDemo
//
//  Created by Dinal's iMac on 17/05/22.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (BottomRefreshControl)

@property (nullable, nonatomic) UIRefreshControl *bottomRefreshControl;

@end


@interface UIRefreshControl (BottomRefreshControl)

@property (nonatomic) CGFloat triggerVerticalOffset;

@end
