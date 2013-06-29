//
//  Verbena.m
//  Verbena
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import "KSVerbenaRenderer.h"

@implementation KSVerbenaRenderer

+ (UIImage *)renderImageWithSize:(CGSize)size transparency:(BOOL)isTransparent andDrawingBlock:(void (^)(void))block;
{
    UIGraphicsBeginImageContextWithOptions(size, !isTransparent, 0.0);
    block();
    UIImage *renderedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return renderedImage;
}

@end
