//
//  ZJHUtils.m
//  Demo
//
//  Created by xlk on 2020/1/3.
//  Copyright © 2020 xuliangkun. All rights reserved.
//

#import "ZJHUtils.h"

static ZJHUtils *singleInstance = nil;

@implementation ZJHUtils

+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if(singleInstance == nil){
            singleInstance = [[ZJHUtils alloc] init];
        }
    });
    return singleInstance;
    
}

@end
