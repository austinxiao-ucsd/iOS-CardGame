//
//  PlayingCard.h
//  CardGame
//
//  Created by Hongda Xiao on 12/24/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#ifndef PlayingCard_h
#define PlayingCard_h

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;



@end





#endif /* PlayingCard_h */
