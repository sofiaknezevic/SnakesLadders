//
//  Player.m
//  SnakesLadders
//
//  Created by Sofia Knezevic on 2017-02-12.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {

        _currentSquare = 0;
        _gameLogic = @{[NSNumber numberWithInt:4]:[NSNumber numberWithInt:14],
                       [NSNumber numberWithInt:9]:[NSNumber numberWithInt:31],
                       [NSNumber numberWithInt:20]:[NSNumber numberWithInt:38],
                       [NSNumber numberWithInt:28]:[NSNumber numberWithInt:84],
                       [NSNumber numberWithInt:51]:[NSNumber numberWithInt:67],
                       [NSNumber numberWithInt:63]:[NSNumber numberWithInt:81],
                       //above are the ladders, below are the snakes
                       [NSNumber numberWithInt:99]:[NSNumber numberWithInt:78],
                       [NSNumber numberWithInt:95]:[NSNumber numberWithInt:75],
                       [NSNumber numberWithInt:89]:[NSNumber numberWithInt:25],
                       [NSNumber numberWithInt:64]:[NSNumber numberWithInt:60],
                       [NSNumber numberWithInt:17]:[NSNumber numberWithInt:7],};
        
        _gameOver = NO;
        
        
    }
    return self;
}

-(void)roll
{
    
    int diceRoll = arc4random_uniform(6)+1;
    
    NSLog(@"You rolled a %i", diceRoll);
    
    self.currentSquare += diceRoll;
    
    NSNumber *current = [NSNumber numberWithLong:self.currentSquare];
    
    if ([self.gameLogic objectForKey:current] == nil) {
        
        if (self.currentSquare >= 100) {
            
            self.gameOver = YES;
            
        }
        
        NSLog(@"You landed on %li", (long)self.currentSquare);
        
    }else if (self.currentSquare < [[self.gameLogic objectForKey:current]intValue] ) {
        
        self.currentSquare = [[self.gameLogic objectForKey:current]intValue];
        NSLog(@"Stairway to heaven!");
        NSLog(@"You jumped from %@ to %li", current, self.currentSquare);
        
    }else{
        
        self.currentSquare = [[self.gameLogic objectForKey:current]intValue];
        NSLog(@"SNAKE!!!!");
        NSLog(@"You slid down from %@ to %li", current, self.currentSquare);
        
    }
    
    
    
}

@end
