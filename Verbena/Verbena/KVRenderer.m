//
//  Verbena.m
//  Verbena
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import "KVRenderer.h"

@implementation KVRenderer

#pragma mark - Private Helper

+ (UIImage *)renderedImageWithDrawingBlock:(DrawingBlock)drawingBlock size:(CGSize)size isTransparent:(BOOL)isTransparent
{
    UIImage *renderedImage = nil;
    
    UIGraphicsBeginImageContextWithOptions(size, !isTransparent, 0.0);
    drawingBlock();
    renderedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return renderedImage;
}

#pragma mark - Public Render

+ (UIImage *)renderImageWithSize:(CGSize)size transparency:(BOOL)isTransparent drawingBlock:(DrawingBlock)drawingBlock
{
	UIImage *renderedImage = nil;
    if ([NSThread isMainThread]) {
        renderedImage = [KVRenderer renderImageWithSize:size transparency:isTransparent drawingBlock:drawingBlock];;
    } else {
        __block UIImage *blockRenderedImage;
        dispatch_sync(dispatch_get_main_queue(), ^{
            blockRenderedImage = [KVRenderer renderImageWithSize:size transparency:isTransparent drawingBlock:drawingBlock];
        });

        renderedImage = blockRenderedImage;
    }

    return renderedImage;
}

@end
