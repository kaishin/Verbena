//
//  Verbena.m
//  Verbena
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import "Verbena.h"

@implementation Verbena

+ (UIImage *)renderImageWithSize:(CGSize)size andDrawingBlock:(void (^)(void))block;
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    block();
    UIImage *renderedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return renderedImage;
}

@end
