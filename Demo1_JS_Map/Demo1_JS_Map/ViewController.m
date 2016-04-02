//
//  ViewController.m
//  Demo1_JS_Map
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSMyAnnotation.h"
#import "JSMyAnnotationView.h"
@interface ViewController ()
@property(nonatomic,strong)NSMutableArray* annotations;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.annotations=[NSMutableArray array];
    CLLocationCoordinate2D coord;
    coord.longitude=116.397471;
    coord.latitude=39.908520;
    MKCoordinateSpan span;
    span.latitudeDelta=0.1;
    span.longitudeDelta=0.1;
    [self.myMapView setRegion:MKCoordinateRegionMake(coord, span)];
}
- (IBAction)tapAction:(UITapGestureRecognizer *)sender {
//    [self.myMapView removeAnnotations:self.annotations];
//    [UIView animateWithDuration:2.0 animations:^{
        CGPoint p=[sender locationInView:self.view];
        CLLocationCoordinate2D coord=[self.myMapView convertPoint:p toCoordinateFromView:self.view];
        JSMyAnnotation* annotation=[[JSMyAnnotation alloc]init];
        [annotation setCoordinate:coord];
        annotation.title=@"天安门";
        annotation.subtitle=@"这里是天安门";
        [self.myMapView addAnnotation:annotation];
        [self.annotations addObject:annotation];
//    } completion:nil];
}
- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
    static NSString* indentifier=@"myAnnotation";
    JSMyAnnotationView* annotationView=(JSMyAnnotationView*)[self.myMapView dequeueReusableAnnotationViewWithIdentifier:indentifier];
    if (!annotationView) {
        annotationView=[[JSMyAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:indentifier];
    }
    return annotationView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
