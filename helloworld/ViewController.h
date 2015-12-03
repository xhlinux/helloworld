//
//  ViewController.h
//  helloworld
//
//  Created by xiaoya on 15/10/15.
//  Copyright © 2015年 com.xiaoheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) UIView * uiView;

-(IBAction)showMessage;

@end

