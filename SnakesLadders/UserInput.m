//
//  UserInput.m
//  SnakesLadders
//
//  Created by Sofia Knezevic on 2017-02-12.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

- (NSString *) getString
{
    char charArray[255];
    fgets(charArray, 255, stdin);
    
    return [[NSString stringWithCString:charArray
                               encoding:NSUTF8StringEncoding]
            stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
}

@end
