//
//  ViewController.m
//  helloworld
//
//  Created by xiaoya on 15/10/15.
//  Copyright © 2015年 com.xiaoheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView
{
    [super loadView];
    
//    [self.view setBackgroundColor:[UIColor greenColor]];
//    self.uiView = [[UIView alloc]initWithFrame:CGRectMake(10, 40, 300, 400)];
//    
//    [self.uiView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:self.uiView];
//    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 260, 300)];
//    [imageView setImage:[UIImage imageNamed:@"110.jpg"]];
//    //imageView.contentMode = UIViewContentModeScaleAspectFit;
//    imageView.tag = 101;
//    [self.uiView addSubview:imageView];
//    
//    [self.view sendSubviewToBack:self.uiView];
    
    UIButton *buttonEditEnd = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonEditEnd.frame = CGRectMake(80, 100, 70, 30);
 
    [buttonEditEnd setTitle:@"end edit" forState:UIControlStateNormal];
    [buttonEditEnd addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonEditEnd];
    
    UIButton *buttonNext = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonNext.frame = CGRectMake(80, 140, 70, 30);
    
    [buttonNext setTitle:@"next" forState:UIControlStateNormal];
    [buttonNext addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonNext];
    
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 50, 200, 35)];
    textField.tag = 1118;
    textField.textColor = [UIColor redColor];
    textField.placeholder = @"请输入试试看啊";
    textField.adjustsFontSizeToFitWidth = YES;
    textField.clearsOnBeginEditing = YES;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textField];
    [self.view bringSubviewToFront:textField];
//    [textField becomeFirstResponder];

    textField.keyboardType = UIKeyboardTypeASCIICapable;
    textField.returnKeyType = UIReturnKeyJoin;
    textField.delegate = self;
    
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
}

-(void)test
{
    UITextField *tf = (UITextField *)[self.view viewWithTag:1118];
    [tf resignFirstResponder];
}

 -(void)test1
{
    UITextField *tf = (UITextField *)[self.view viewWithTag:1118];
    [tf resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField        // return NO to disallow editing.
{
    NSLog(@"将要开始编辑");
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField           // became first responder
{
    NSLog(@"开始编辑");
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField          // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
{
    NSLog(@"将要结束编辑");
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField             // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
{
    NSLog(@"结束编辑：%@",textField.text);
}
//
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string   // return NO to not change text
{
    NSLog(@"range:len= %ld,loc = %ld, string:%@",range.length, range.location, string);
    if (range.location >= 11) {
        return NO;
    }
    else
    {
        return YES;
    }
}
//
- (BOOL)textFieldShouldClear:(UITextField *)textField               // called when clear button pressed. return NO to ignore (no notifications)
{
    NSLog(@"clear:%@",textField.text);
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField              // called when 'return' key pressed. return NO to ignore.
{
    NSLog(@"textFieldShouldReturn:%@",textField.text);
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:self];
    [self.view window].rootViewController = nc;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if ([self.view window] == nil) {
        self.uiView = nil;
        self.view = nil;
    }
}

-(IBAction)showMessage
{
    UIAlertController * con = [UIAlertController alertControllerWithTitle:@"请登录" message:@"输入用户名和密码" preferredStyle:UIAlertControllerStyleAlert];
    //NSLog(@"window1 level:%.2f",[UIApplication sharedApplication].keyWindow.windowLevel);
    [con addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"登录";
    }];
    [con addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"密码";
        textField.secureTextEntry = YES;
    }];
    [con addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"action:%@",action);
        //按钮触发的方法
        
        
    }]];
    [con addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //按钮触发的方法
        UITextField *login = con.textFields.firstObject;
        UITextField *password = con.textFields.lastObject;
        
    }]];
    
    
    [self presentViewController:con animated:YES completion:nil];
}

@end
