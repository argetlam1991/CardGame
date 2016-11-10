//
//  CardMatchingGame.h
//  CardGame
//
//  Created by Gu Han on 11/9/16.
//  Copyright © 2016 Gu Han. All rights reserved.
//

#ifndef CardMatchingGame_h
#define CardMatchingGame_h

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"


@interface CardMatchingGame : NSObject

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;
- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;
@end


#endif /* CardMatchingGame_h */
