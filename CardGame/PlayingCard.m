//
//  PlayingCard.m
//  CardGame
//
//  Created by Hongda Xiao on 12/24/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#import "PlayingCard.h"

@implementation  PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// need to create the instance variable since both the setter and getter
// are implemented
@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♥", @"◆", @"♠︎", @"♣︎"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6",
             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

@end
