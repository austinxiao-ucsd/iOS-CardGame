//
//  Card.h
//  CardGame
//
//  Created by Hongda Xiao on 12/22/16.
//  Copyright © 2016 UC San Diego. All rights reserved.
//

#ifndef Card_h
#define Card_h
#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;


//- (int)match:(Card *)card;

- (int)match:(NSArray *)otherCards;


@end




#endif /* Card_h */
