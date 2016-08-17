//
//  HomeVC.h
//  exerciseFruity
//
//  Created by Quan on 8/17/16.
//  Copyright © 2016 Fruity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quote.h"
#import "QuoteDataBase.h"

@interface HomeVC : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn_previous;
@property(weak,nonatomic) QuoteDataBase *database;
@property(nonatomic, weak) Quote *currentQuote;
@property (weak, nonatomic) IBOutlet UIButton *btnPin;
@property (weak, nonatomic) IBOutlet UIButton *btnShare;
@property (weak, nonatomic) IBOutlet UILabel *titleQuote;
@property (weak, nonatomic) IBOutlet UITextView *textViewContent;
- (IBAction)actionPrevious:(id)sender;

-(void)setDataForViews: (Quote*)currentQuote;


@end
