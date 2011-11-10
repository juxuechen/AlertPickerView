//
//  LoadingAlertView.m
//  PickerAlertView
//
//  Created by chenyang on 11/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LoadingAlertView.h"

@implementation LoadingAlertView

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
		[self addSubview:activity];
		[activity release];
	}
	return self;
}

- (void)setFrame:(CGRect)rect {
	[super setFrame:CGRectMake(0, 0, 320, 300)];//width 默认 284
	self.center = CGPointMake(320/2, 280);
}

- (void)layoutSubviews {
	[super layoutSubviews];
	for (UIView *view in self.subviews) {
		if (view.frame.size.height == 43) {
			view.frame = CGRectMake(view.frame.origin.x, 232, 127, 43);
		}
	}
}

- (void)drawRect:(CGRect)rect {
	[super drawRect:rect];
}


@end
