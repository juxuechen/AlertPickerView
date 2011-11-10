//
//  ViewController.m
//  PickerAlertView
//
//  Created by juxue.chen on 8/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PickerViewController.h"
#import "PickerAlertView.h"

@implementation PickerViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void) viewDidLoad {
	label = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 120, 40)];
	label.text = @"日期";
	[self.view addSubview:label];
	[label release];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	button.frame = CGRectMake(100, 50, 230, 40);
	[button addTarget:self action:@selector(pickerAction) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];

}

- (void)pickerAction {
	PickerAlertView *pickerAlertView = [[PickerAlertView alloc] initWithTitle:@" " message:@" " delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
	[pickerAlertView show];
}

#pragma mark UIAlertViewDelegate 
- (void)alertView:(PickerAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSString *dateFromData = [NSString stringWithFormat:@"%@",alertView.datePickerView.date];
	NSString *date = [dateFromData substringWithRange:NSMakeRange(0, 10)];
	label.text = date;
	NSLog(@"date %@...%@",date,alertView.datePickerView.date);
}

@end
