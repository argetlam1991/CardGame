//
//  Card.h
//  CardGame
//
//  Created by Gu Han on 11/2/16.
//  Copyright © 2016 Gu Han. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef Card_h
#define Card_h

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMathced) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end

#endif /* Card_h */
