//
//  AdditionQuestion.m
//  Maths
//
//  Created by Erik Goossens on 2018-06-05.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        int randomNumOne = arc4random_uniform(90) +10;
        int randomNumTwo = arc4random_uniform(90) +10;
        
        _question = [NSString stringWithFormat:(@"What is the sum of %i + %i ?"), randomNumOne, randomNumTwo];
        _answer = randomNumOne + randomNumTwo;
        
    }
    return self;
}

@end
