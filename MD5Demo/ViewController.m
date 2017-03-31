//
//  ViewController.m
//  MD5Demo
//
//  Created by zhangmh on 12-7-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)dealloc
{
    [outputLabel release];
    [inputField  release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    inputField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 30)];
    inputField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:inputField];
    
    outputLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 320, 50)];
    outputLabel.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:outputLabel];
    
    UIButton *button  = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 80, 50, 50);
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:button];
    
}
- (void)buttonPressed:(UIButton *)button
{
    outputLabel.text = [MyMD5 md5:inputField.text];
    NSLog(@"++++++%@",outputLabel.text);
}

@end
