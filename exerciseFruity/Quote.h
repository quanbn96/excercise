//
//  Quote.h
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quote : NSObject
@property(nonatomic, copy) NSString *content;
@property(nonatomic, assign) int Id;
-(id)initWithID: (int)id content: (NSString*)content;
@end
