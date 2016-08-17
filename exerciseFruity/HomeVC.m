//
//  HomeVC.m
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import "HomeVC.h"
#import "ModelManager.h"
#import "Quote.h"
#import "QuoteDataBase.h"

@interface HomeVC ()
@property (weak, nonatomic) IBOutlet UIImageView *dataImage;

@end

@implementation HomeVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataImage.layer.masksToBounds = YES;
    self.dataImage.layer.cornerRadius = 20;
    self.title = @"AppyQuotes";
    self.database = [QuoteDataBase shareInstance];
    self.currentQuote = [[self.database QuoteArr] objectAtIndex:0];
    [self print];
    
  //  [self setDataForViews:self.currentQuote];
    
}

-(void)print {
    NSLog(@"%d", self.database.QuoteArr.count);
}


-(void)setDataForViews:(Quote *)currentQuote{
    [self.titleQuote setText: [NSString stringWithFormat:@"Quote %d", [currentQuote Id]]];
    [self.textViewContent setText:[currentQuote content]];

}

-(IBAction)actionPrevious:(id)sender{
    [self print];
}


- (IBAction)actionAllQuotes:(id)sender {
}

- (IBAction)actionFavoriteQuotes:(id)sender {
}

- (IBAction)actionAboutUs:(id)sender {
}

@end
