//
//  PickerAlertView.h
//  YunPlus
//
//  Created by juxue.chen on 8/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@interface PickerAlertView : UIAlertView{
	UIDatePicker *datePickerView;
}

@property (nonatomic,retain) UIDatePicker *datePickerView;

- (void)createDatePicker;

@end
