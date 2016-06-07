//
//  ViewController.m
//  JSBindingDemo
//
//  Created by SoulJa on 16/6/6.
//  Copyright © 2016年 SoulJa. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JSContext *context = [[JSContext alloc] init];
//    JSValue *reuslt = [context evaluateScript:@"1+2"];
//    NSLog(@"1+2=%f",[reuslt toDouble]);
    
//    [context evaluateScript:@"function sum(a,b){return a+b;}"];
//    JSValue *sum = context[@"sum"];
//    JSValue *result = [sum callWithArguments:@[@1,@2]];
//    NSLog(@"sum(1,2)=%f",[result toDouble]);
    
//    [context evaluateScript:@"var bar = 1;"];
//    JSValue *bar = context[@"bar"];
//    NSLog(@"%f",[bar toDouble]);
    
    context[@"sum"] = ^(int a, int b){
        JSContext *ctx = [JSContext currentContext];
        return a+b;
    };
    JSValue *result = [context evaluateScript:@"sum(1,2)"];
    NSLog(@"1+2=%f",[result toDouble]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
