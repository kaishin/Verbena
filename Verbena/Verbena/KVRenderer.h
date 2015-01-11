//
//  Verbena.h
//  Verbena
//
//  Created by Reda Lemeden on 29/6/13.
//  Copyright (c) 2013 kaishin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^DrawingBlock)();

@interface KVRenderer : NSObject

+ (UIImage *)renderImageWithSize:(CGSize)size transparency:(BOOL)isTransparent drawingBlock:(DrawingBlock)drawingBlock;

@end
