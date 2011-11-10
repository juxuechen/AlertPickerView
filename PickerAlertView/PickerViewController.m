//
//  ViewController.m
//  PickerAlertView
//
//  Created by juxue.chen on 8/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PickerViewController.h"
#import "LoadingAlertView.h"

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
	label = [[UILabel alloc] initWithFrame:CGRectMake(40, 50, 210, 40)];
	label.text = @"LoadingAlertView出来吧～";
	[self.view addSubview:label];
	[label release];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	button.frame = CGRectMake(240, 50, 40, 40);
	[button addTarget:self action:@selector(pickerAction) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];

}

- (void)pickerAction {
	LoadingAlertView *loadingAlertView = [[LoadingAlertView alloc] initWithTitle:@"加载中" message:@"正在加载" delegate:self cancelButtonTitle:@"取消" otherButtonTitles: nil];
	[loadingAlertView show];
	
	[self performSelector:@selector(removeAlertView:) withObject:loadingAlertView afterDelay:2.0f];
}

- (void)removeAlertView:(LoadingAlertView *) loadingAlertView{
	[loadingAlertView dismissWithClickedButtonIndex:0 animated:YES];

}

@end
