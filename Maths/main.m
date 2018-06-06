//
//  main.m
//  Maths
//
//  Created by Erik Goossens on 2018-06-05.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        InputHandler* input1 = [[InputHandler alloc] init];
        ScoreKeeper* score1 = [[ScoreKeeper alloc] init];
        
        BOOL gameOn = YES;
        while (gameOn)
        {
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", question1.question);
            
            NSString *trimmedInput = [input1 getInput];
            
            if ([trimmedInput  isEqual: @"quit"])
            {
                gameOn = NO;
                continue;
            }
            
            if (trimmedInput.intValue == question1.answer)
            {
                score1.countRight += 1;
                NSLog(@"Right!");
            }
            else {
                score1.countWrong += 1;
                NSLog(@"Wrong!");
            }
            
            [score1 percentCorrect];
            
            
            
            
            
        }
        return 0;
    }
}
