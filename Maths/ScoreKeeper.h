//
//  ScoreKeeper.h
//  Maths
//
//  Created by Erik Goossens on 2018-06-06.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger countRight;
@property (nonatomic, assign) NSInteger countWrong;

- (void) percentCorrect;


@end
