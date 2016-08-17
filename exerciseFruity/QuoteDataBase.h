//
//  QuoteDataBase.h
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuoteDataBase : NSObject
@property(weak, nonatomic) NSMutableArray *QuoteArr;
+(id)shareInstance;
-(id)init;
@end
