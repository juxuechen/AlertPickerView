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

- (void)pickerAction {
	LoadingAlertView *loadingAlertView = [[LoadingAlertView alloc] initWithTitle:@"正在加载..." message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles: nil];
	[loadingAlertView show];
	
	[self performSelector:@selector(loadedAlertView:) withObject:loadingAlertView afterDelay:3.0f];
}

- (void)loadedAlertView:(LoadingAlertView *) loadingAlertView {
	[loadingAlertView loaded];
	[self performSelector:@selector(removeAlertView:) withObject:loadingAlertView afterDelay:1.0f];
}

- (void)removeAlertView:(LoadingAlertView *) loadingAlertView {
	[loadingAlertView dismissWithClickedButtonIndex:0 animated:YES];
}

- (void) viewDidLoad {
	label = [[UILabel alloc] initWithFrame:CGRectMake(40, 50, 210, 40)];
	label.text = @"LoadingAlertView出来吧～";
	[self.view addSubview:label];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	button.frame = CGRectMake(240, 50, 40, 40);
	[button addTarget:self action:@selector(pickerAction) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
	
	[self pickerAction];
}

@end
