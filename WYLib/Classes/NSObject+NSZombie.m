//
//  NSObject+NSZombie.m
//  ThreadLearning
//
//  Created by luguoliang on 2020/6/13.
//  Copyright © 2020 luguoliang. All rights reserved.
//

#import "NSObject+NSZombie.h"

#import <objc/runtime.h>


@implementation NSObject (NSZombie)

+(void)load{
    
   static dispatch_once_t oneToken;
    
    dispatch_once(&oneToken, ^{
        Class class = [self class];
        Method originalSelector = class_getInstanceMethod([self class], NSSelectorFromString(@"delloc"));
        SEL swizzingSelector = @selector(newDealloc);
    });
}

@end
