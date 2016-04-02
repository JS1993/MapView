//
//  JSMyAnnotation.m
//  Demo1_JS_Map
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSMyAnnotation.h"

@implementation JSMyAnnotation
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate NS_AVAILABLE(10_9, 4_0){
    _coordinate=newCoordinate;
}
@end
