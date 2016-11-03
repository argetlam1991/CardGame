//
//  Card.m
//  CardGame
//
//  Created by Gu Han on 11/2/16.
//  Copyright © 2016 Gu Han. All rights reserved.
//

#import "Card.h"

@interface Card()
@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end


