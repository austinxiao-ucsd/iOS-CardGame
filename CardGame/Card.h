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

@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

@end




#endif /* Card_h */
