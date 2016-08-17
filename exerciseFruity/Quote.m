//
//  Quote.m
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import "Quote.h"

@implementation Quote

-(id)initWithID:(int)Id content:(NSString *)content {
    if(self = [super init]) {
        self.Id = Id;
        self.content = content;
    }
    return self;
}

@end
