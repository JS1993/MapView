//
//  JSMyAnnotationView.m
//  Demo1_JS_Map
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSMyAnnotationView.h"
#import "ZombA.h"
@implementation JSMyAnnotationView

-(instancetype)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
//        ZombA* zomb=[[ZombA alloc]initWithFrame:CGRectMake(0, 0, 20, 30)];
//        [self addSubview:zomb];
    }
    return self;
}

@end
