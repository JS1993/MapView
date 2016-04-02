//
//  JSMyAnnotation.h
//  Demo1_JS_Map
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface JSMyAnnotation : NSObject<MKAnnotation>
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;


// Title and subtitle for use by selection UI.
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;

// Called as a result of dragging an annotation view.
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate NS_AVAILABLE(10_9, 4_0);
@end
