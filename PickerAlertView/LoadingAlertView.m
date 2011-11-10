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
		
		UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        activity.frame = CGRectMake(180, 15, 80, 80);
        [activity startAnimating];
        [activity sizeToFit];
		[self addSubview:activity];
		
	}
	return self;
}

//- (void)setFrame:(CGRect)rect {
//	[super setFrame:CGRectMake(0, 0, 284, 200)];//width 默认 284
//	self.center = CGPointMake(320/2, 280);
//}

- (void)layoutSubviews {
	[super layoutSubviews];
	for (id obj in self.subviews) {
		if ([obj isKindOfClass:[UILabel class]]) {
			UILabel *label = obj;
			label.frame = CGRectMake(92, 15, 100, 23);
			label.textAlignment = UITextAlignmentLeft;
		}
	}
}

- (void)drawRect:(CGRect)rect {
	[super drawRect:rect];
}

- (void)loaded {
	for (id obj in self.subviews) {
		if ([obj isKindOfClass:[UILabel class]]) {
			UILabel *label = obj;
			label.text = @"加载完毕";
			label.textAlignment = UITextAlignmentCenter;
		}
		else if ([obj isKindOfClass:[UIActivityIndicatorView class]]) {
			[obj stopAnimating];
		}
	}
}

@end
