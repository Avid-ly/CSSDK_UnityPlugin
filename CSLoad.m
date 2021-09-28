//
//  CSLoad.m
//  Unity-iPhone
//
//  Created by steve on 2021/4/26.
//

#import <Foundation/Foundation.h>

@interface CSLoad : NSObject

@end

@implementation CSLoad

+ (void)load {
    NSString* bundlePath = nil;
    bundlePath = [[NSBundle mainBundle] bundlePath];
    bundlePath = [bundlePath stringByAppendingString: @"/Frameworks/UnityFramework.framework"];

    NSBundle* bundle = [NSBundle bundleWithPath: bundlePath];
    if ([bundle isLoaded] == false) {
        [bundle load];
    }
}

@end
