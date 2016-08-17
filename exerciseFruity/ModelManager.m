//
//  ModelManager.m
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import "ModelManager.h"
#import "Quote.h"
#import "GDataXMLNode.h"

@implementation ModelManager
+(NSString*)dataFilePath {
    return [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"xml"];
}

+(NSMutableArray*) loadQuote {
    NSMutableArray *QuoteArr = [[NSMutableArray alloc] init];
    NSString *dataFilePath = [self dataFilePath];
    NSData *xmlData = [[NSData alloc] initWithContentsOfFile:dataFilePath];
    NSError *error;
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithData:xmlData error:&error];
    if (doc == nil) {return nil;}
    NSArray *QuotesArrElement = [[doc rootElement] elementsForName:@"quote"];
    for (GDataXMLElement *quoteElement in QuotesArrElement) {
        NSArray *ContentElementArr = [quoteElement elementsForName:@"content"];
        GDataXMLElement *contentELement = [ContentElementArr objectAtIndex:0];
        NSArray *IdArrElement = [quoteElement elementsForName:@"id"];
        GDataXMLElement *IdElement = [IdArrElement objectAtIndex:0];
        int Id = [[IdElement stringValue] intValue];
        NSString *content = [contentELement stringValue];
        Quote *quote = [[Quote alloc] initWithID:Id content:content];
        [QuoteArr addObject:quote];
    }
    return QuoteArr;
}
@end
