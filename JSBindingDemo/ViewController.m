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
//    JSContext *context = [[JSContext alloc] init];
//    JSValue *result = [context evaluateScript:@"1+2"];
//    NSLog(@"1+2=%f",[result toDouble]);
    
//    JSContext *context = [[JSContext alloc] init];
//    JSValue *sum = context[@"sum"];
//    JSValue *result = [sum callWithArguments:@[@1,@2]];
//    NSLog(@"sum(1,2)=%f",[result toDouble]);

//    JSContext *context = [[JSContext alloc] init];
//    JSValue *intVar = [JSValue valueWithInt32:231 inContext:context];
//    context[@"bar"] = intVar;
//    [context evaluateScript:@"bar++"];
//    JSContext *context = [[JSContext alloc] init];
//    context.exceptionHandler = ^(JSContext *context,JSValue *exception){
//        NSLog(@"%@",exception);
//    };
    
    JSContext *context = [[JSContext alloc] init];
    context[@"sum"] = ^(int a,int b){
        return a + b;
    };
    JSValue *result = [context evaluateScript:@"sum(1,2)"];
    NSLog(@"sum(1,2)=%f",[result toDouble]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
