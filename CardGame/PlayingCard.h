//
//  PlayingCard.h
//  CardGame
//
//  Created by Gu Han on 11/3/16.
//  Copyright © 2016 Gu Han. All rights reserved.
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
