//
//  QuoteDataBase.m
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import "QuoteDataBase.h"
#import "ModelManager.h"

@implementation QuoteDataBase
+(id)shareInstance {
    static QuoteDataBase *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc] init];
    });
    return shareInstance;
}
-(id)init {
    if(self = [super init]) {
        self.QuoteArr = [ModelManager loadQuote];
    }
    return self;
}

@end
