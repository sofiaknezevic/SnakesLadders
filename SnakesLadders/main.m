//
//  main.m
//  SnakesLadders
//
//  Created by Sofia Knezevic on 2017-02-12.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        UserInput *input = [[UserInput alloc] init];
        
        Player *newPlayer = [[Player alloc] init];
        
        
        NSLog(@"\nWelcome to Snakes & Ladders, that super boring game you played as a kid!\nPlease type 'roll' or simply 'r' to roll a dice and start playing!");
        
        while(gameOn){

            
            NSString *willPlay = [input getString];
            
            if([willPlay isEqualToString:@"roll"] || [willPlay isEqualToString:@"r"])
            {
                
                [newPlayer roll];
                
                if (newPlayer.gameOver == YES) {
                    
                    NSLog(@"CONGRATULATIONS!! YOU WIN!!");
                    
                    break;
                    
                }
                
            }else if([willPlay isEqualToString:@"quit"])
            {
                
                gameOn = NO;
                
                break;
                
            }
            
        }
        
    }
    return 0;
}
