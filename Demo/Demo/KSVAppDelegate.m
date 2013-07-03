//
//  KSVAppDelegate.m
//  Demo
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import "KSVAppDelegate.h"

@implementation KSVAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController *rootViewController = [[UIViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = rootViewController;

    UIImage *backgroundImage = [KVRenderer renderImageWithSize:CGSizeMake(200, 204) transparency:YES drawingBlock:^{
        // Custom drawing code (generated with PaintCode)
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
        CGContextRef context = UIGraphicsGetCurrentContext();

        UIColor *topColor = [UIColor colorWithHue:0.289 saturation:0.459 brightness:0.871 alpha:1.000];
        UIColor *bottomColor = [UIColor colorWithHue:0.289 saturation:0.485 brightness:0.792 alpha:1.000];
        UIColor *shadowColor = [UIColor colorWithHue:0.289 saturation:0.392 brightness:0.561 alpha:1.000];

        NSArray *gradientColors = (@[
                                   (id)topColor.CGColor,
                                   (id)bottomColor.CGColor
                                   ]);

        CGFloat gradientLocations[] = {0, 1};
        CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);

        UIColor* shadow = shadowColor;
        CGSize shadowOffset = CGSizeMake(0, 4);
        CGFloat shadowBlurRadius = 0;

        UIBezierPath* blueSquarePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0, 0, 200, 200) cornerRadius: 10];
        CGContextSaveGState(context);
        CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, shadow.CGColor);
        CGContextBeginTransparencyLayer(context, NULL);
        [blueSquarePath addClip];
        CGContextDrawLinearGradient(context, gradient, CGPointMake(100, 0), CGPointMake(100, 200), 0);
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);

        UIBezierPath* leafShapePath = [UIBezierPath bezierPath];
        [leafShapePath moveToPoint: CGPointMake(101, 101)];
        [leafShapePath addLineToPoint: CGPointMake(40, 51)];
        [leafShapePath addCurveToPoint: CGPointMake(66, 109) controlPoint1: CGPointMake(36, 65) controlPoint2: CGPointMake(46, 89)];
        [leafShapePath addCurveToPoint: CGPointMake(160, 160) controlPoint1: CGPointMake(89, 132) controlPoint2: CGPointMake(160, 160)];
        [leafShapePath addCurveToPoint: CGPointMake(109, 66) controlPoint1: CGPointMake(160, 160) controlPoint2: CGPointMake(132, 89)];
        [leafShapePath addCurveToPoint: CGPointMake(51, 40) controlPoint1: CGPointMake(89, 46) controlPoint2: CGPointMake(65, 36)];
        [leafShapePath addLineToPoint: CGPointMake(101, 101)];
        [leafShapePath closePath];
        leafShapePath.miterLimit = 4;
        
        [shadowColor setFill];
        [leafShapePath fill];
        
        CGGradientRelease(gradient);
        CGColorSpaceRelease(colorSpace);
    }];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
    CGRect windowRect = self.window.frame;
    imageView.center = CGPointMake(windowRect.size.width / 2, windowRect.size.height / 2);
    [self.window addSubview:imageView];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
