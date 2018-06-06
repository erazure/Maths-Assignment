//
//  InputHandler.m
//  Maths
//
//  Created by Erik Goossens on 2018-06-05.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler : NSObject

- (NSString *)getInput{
    printf("Type your answer here: ");
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSString *trimmedInput = [input stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return trimmedInput;
}



@end

    
