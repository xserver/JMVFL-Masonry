//
//  MasonryDatumLineView.m
//  VFL
//
//  Created by xserver on 15/4/28.
//  Copyright (c) 2015年 pitaya. All rights reserved.
//

#import "MasonryDatumLineView.h"
#import "MasonryHelper.h"
/**
 trailing       左
 baseline       底
 leading        右
 */
@implementation MasonryDatumLineView

- (id)init {
    self = [super init];
    if (!self) return nil;
    
    UIView *redView = UIViewWithColor(UIColor.redColor);
    [self addSubview:redView];
    
    UIView *blueView = UIViewWithColor(UIColor.blueColor);
    [self addSubview:blueView];

    UIView *greenView = UIViewWithColor(UIColor.greenColor);
    [self addSubview:greenView];
    
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.left.equalTo(20);
        make.width.equalTo(100);
        
        make.baseline.offset(-44);  //  底线 y = superview.height
//        make.baseline.equalTo(superview.centerY);
    }];
    
    [greenView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(blueView.bottom).offset(20);
        make.width.height.equalTo(100);
        make.leading.offset(40);
    }];
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(40);
        make.height.equalTo(100);
        make.trailing.offset(-40);
    }];
    
    return self;
}

@end
