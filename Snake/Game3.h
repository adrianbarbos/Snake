//
//  Game.h
//  Snake
//
//  Created by Delta on 7/21/14.
//  Copyright (c) 2014 AKA Development. All rights reserved.
//

#import <UIKit/UIKit.h>

int SnakeX;
int SnakeY;

int FoodX;
int FoodY;

int ScoreNumber;

BOOL SnakeSideMovement;

BOOL SnakeBlock6inPlay;
BOOL SnakeBlock7inPlay;
BOOL SnakeBlock8inPlay;
BOOL SnakeBlock9inPlay;
BOOL SnakeBlock10inPlay;
BOOL SnakeBlock11inPlay;
BOOL SnakeBlock12inPlay;
BOOL SnakeBlock13inPlay;
BOOL SnakeBlock14inPlay;
BOOL SnakeBlock15inPlay;
BOOL SnakeBlock16inPlay;
BOOL SnakeBlock17inPlay;
BOOL SnakeBlock18inPlay;
BOOL SnakeBlock19inPlay;
BOOL SnakeBlock20inPlay;

NSInteger *HighScoreNumber;


@interface Game3 : UIViewController
{
    IBOutlet UIImageView *SnakeBlock1;
    IBOutlet UIImageView *SnakeBlock2;
    IBOutlet UIImageView *SnakeBlock3;
    IBOutlet UIImageView *SnakeBlock4;
    IBOutlet UIImageView *SnakeBlock5;
    IBOutlet UIImageView *SnakeBlock6;
    IBOutlet UIImageView *SnakeBlock7;
    IBOutlet UIImageView *SnakeBlock8;
    IBOutlet UIImageView *SnakeBlock9;
    IBOutlet UIImageView *SnakeBlock10;
    IBOutlet UIImageView *SnakeBlock11;
    IBOutlet UIImageView *SnakeBlock12;
    IBOutlet UIImageView *SnakeBlock13;
    IBOutlet UIImageView *SnakeBlock14;
    IBOutlet UIImageView *SnakeBlock15;
    IBOutlet UIImageView *SnakeBlock16;
    IBOutlet UIImageView *SnakeBlock17;
    IBOutlet UIImageView *SnakeBlock18;
    IBOutlet UIImageView *SnakeBlock19;
    IBOutlet UIImageView *SnakeBlock20;
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *Food;
    IBOutlet UILabel *ScoreLabel;
    IBOutlet UIButton *ExitBG;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *ExitLabel;
    IBOutlet UILabel *HighScore;
    
    NSTimer *SnakeMovement;
    
    
}

- (void)PlaceFood;
- (void)SnakeMoving;
- (IBAction)Start:(id)sender;
- (void)Score;
- (void)GameOver;

@end
