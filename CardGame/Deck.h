//
//  Deck.h
//  CardGame
//
//  Created by Hongda Xiao on 12/24/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#ifndef Deck_h
#define Deck_h

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck: NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end

#endif /* Deck_h */
