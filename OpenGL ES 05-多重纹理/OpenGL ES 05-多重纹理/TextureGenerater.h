//
//  TextureGenerater.h
//  OpenGL ES 05-多重纹理
//
//  Created by 尹一博 on 2020/8/14.
//  Copyright © 2020 PicVision. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>
#import "AGLKContext.h"

NS_ASSUME_NONNULL_BEGIN

@interface TextureGenerater : NSObject

- (void)setupCurrentContext:(nullable EAGLContext*) context ;
- (void)setupSharegroup:(EAGLSharegroup *)sharegroup;
- (GLKTextureInfo *)getTextureInfo:(NSString *)imageName ;

@end

NS_ASSUME_NONNULL_END
