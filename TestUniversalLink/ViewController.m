//
//  ViewController.m
//  TestUniversalLink
//
//  Created by WataruSuzuki on 2016/11/01.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapButton:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"https://watarusuzuki.github.io/iOS-Sample-Chimera-ObjC/"];
    [[UIApplication sharedApplication] openURL:url];
}

@end
