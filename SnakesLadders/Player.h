//
//  Player.h
//  SnakesLadders
//
//  Created by Sofia Knezevic on 2017-02-12.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, strong) NSDictionary *gameLogic;

@property (nonatomic) BOOL gameOver;

- (void) roll;

@end
