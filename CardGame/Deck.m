//
//  Deck.m
//  CardGame
//
//  Created by Hongda Xiao on 12/24/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;    // a deck of cards
@end

@implementation Deck

- (NSMutableArray *)cards
{
    // check for heap allocation
    if (!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}


- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        // use random generator to find a random card
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        // Note: calling ObjectAtInde would crash w/o checking nil
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
