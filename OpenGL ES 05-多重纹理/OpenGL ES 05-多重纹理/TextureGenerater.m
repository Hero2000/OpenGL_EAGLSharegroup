//
//  TextureGenerater.m
//  OpenGL ES 05-多重纹理
//
//  Created by 尹一博 on 2020/8/14.
//  Copyright © 2020 PicVision. All rights reserved.
//

#import "TextureGenerater.h"

@implementation TextureGenerater

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setupSharegroup:(EAGLSharegroup *)sharegroup {
     [AGLKContext setCurrentContext:[[AGLKContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2 sharegroup:sharegroup]];
}

- (void)setupCurrentContext:(nullable EAGLContext*) context {
    if (context) {
        [AGLKContext setCurrentContext:context];
    } else {
        [AGLKContext setCurrentContext:[[AGLKContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2]];
    }

}

- (GLKTextureInfo *)getTextureInfo:(NSString *)imageName {
       CGImageRef imageRef1 = [[UIImage imageNamed:imageName] CGImage];
    //    //GLKTextureLoaderOriginBottomLeft确保画出的图像与UIKit坐标一致，不颠倒
       GLKTextureInfo* info1 = [GLKTextureLoader textureWithCGImage:imageRef1 options:[NSDictionary dictionaryWithObjectsAndKeys:
                                                                             [NSNumber numberWithBool:YES],
                                                                             GLKTextureLoaderOriginBottomLeft, nil] error:NULL];
       return info1;
}

@end
