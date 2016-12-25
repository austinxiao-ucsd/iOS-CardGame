//
//  Card.m
//  CardGame
//
//  Created by Hongda Xiao on 12/24/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card

- (int)match: (NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
