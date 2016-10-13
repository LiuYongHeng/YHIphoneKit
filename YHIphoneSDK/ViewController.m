//
//  ViewController.m
//  YHIphoneSDK
//
//  Created by LYH on 16/9/23.
//  Copyright © 2016年 LYH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    void (^call)(NSString*) = ^(NSString *txt){
//
//     void (^call)  
    
//    };
//    call(@"");
    
    void (^callblock) (void) = ^(void){
//        NSLog(@"---eeeeeee");   NSLog(@"“)
        
        NSLog(@"");
    };
    
    callblock();
    
    
    [self setUpState];
    
    

    // Do any additional setup after loading the view, typically from a nib.
}


-(void)setUpState{
    NSLog(@"333");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
