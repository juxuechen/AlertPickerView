//
//  PickerAlertView.m
//  YunPlus
//
//  Created by juxue.chen on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PickerAlertView.h"

@implementation PickerAlertView

@synthesize datePickerView;

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
		[self createDatePicker];
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

#pragma mark -
#pragma mark UIPickerView - Date/Time

- (void)createDatePicker
{
	datePickerView = [[UIDatePicker alloc] initWithFrame:CGRectZero];
	datePickerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
	datePickerView.frame = CGRectMake(10, 10, 300, 216);//216
	datePickerView.datePickerMode = UIDatePickerModeDate;
	
	[self addSubview:datePickerView];
}

@end
