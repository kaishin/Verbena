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
    // Override point for customization after application launch.
    UIViewController *rootViewController = [[UIViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = rootViewController;

    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(100, 50, 100, 100)];
    testView.backgroundColor = [UIColor grayColor];

    UIImage *backgroundImage = [KSVerbenaRenderer renderImageWithSize:CGSizeMake(100, 100) andDrawingBlock:^{
        UIBezierPath *rectangle = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 200, 200)];
        [[UIColor redColor] setFill];
        [rectangle fill];
    }];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
    [self.window addSubview:testView];
    [self.window addSubview:imageView];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
