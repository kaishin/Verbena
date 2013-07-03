//
//  Verbena.m
//  Verbena
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import "KVRenderer.h"

@implementation KVRenderer

+ (UIImage *)renderImageWithSize:(CGSize)size transparency:(BOOL)isTransparent drawingBlock:(void (^)(void))drawingBlock
{
	UIImage *renderedImage = nil;
    if ([NSThread isMainThread]) {
        UIGraphicsBeginImageContextWithOptions(size, !isTransparent, 0.0);
	    drawingBlock();
	    renderedImage = UIGraphicsGetImageFromCurrentImageContext();
	    UIGraphicsEndImageContext();
    } else {
        __block UIImage *blockRenderedImage;

        dispatch_sync(dispatch_get_main_queue(), ^{
            UIGraphicsBeginImageContextWithOptions(size, !isTransparent, 0.0);
            drawingBlock();
            blockRenderedImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
        });

        renderedImage = blockRenderedImage;
    }

    return renderedImage;
}

@end
