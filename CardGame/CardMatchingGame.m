//
//  CardMatchingGame.m
//  CardGame
//
//  Created by Gu Han on 11/9/16.
//  Copyright © 2016 Gu Han. All rights reserved.
//


#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation CardMatchingGame

- (NSMutableArray *)cards
{
    if (!_cards)_cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            } else {
                self = nil;
                break;
            }
            
        }
    }
    return self;
}

static const int MISMATCH_PENALTY = 2;
static const int MATCH_BONUS = 4;
static const int COST_TO_CHOOSE = 1;


- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

- (void)chooseCardAtIndex:(NSUInteger) index
{
    Card *card = [self cardAtIndex:index];
    if (card.isChosen) {
        card.chosen = NO;
    } else {
        // match against other chosen cards
        for (Card *otherCard in self.cards) {
            if (otherCard.isChosen && !otherCard.isMathced) {
                int matchScore = [card match:@[otherCard]];
                if (matchScore) {
                    self.score += matchScore * MATCH_BONUS;
                    otherCard.matched = YES;
                    card.matched = YES;
                } else {
                    self.score -= MISMATCH_PENALTY;
                    otherCard.chosen = NO;
                }
                break;
            }
        }
        self.score -= COST_TO_CHOOSE;
        card.chosen = YES;
    }
}

@end
