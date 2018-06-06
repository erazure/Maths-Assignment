//
//  ScoreKeeper.m
//  Maths
//
//  Created by Erik Goossens on 2018-06-06.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init {
    self = [super init];
    if (self)
    {
        _countRight = 0;
        _countWrong = 0;
       
    }
    return self;
}

- (void)percentCorrect {
    NSInteger percentCorrect = ((_countRight / (_countRight +_countWrong *1.0)) * 100);
    NSLog(@"Your score is: %li right, %li wrong. %li percent correct!", (long)_countRight, (long)_countWrong, (long)percentCorrect);
}

    
    
    


@end
