//
//  Game3.m
//  Snake
//
//  Created by Delta on 7/21/14.
//  Copyright (c) 2014 AKA Development. All rights reserved.
//

#import "Game3.h"

@interface Game3 ()

@end

@implementation Game3

- (void)GameOver
{
    
    [SnakeMovement invalidate];
    SnakeBlock1.hidden = YES;
    SnakeBlock2.hidden = YES;
    SnakeBlock3.hidden = YES;
    SnakeBlock4.hidden = YES;
    SnakeBlock5.hidden = YES;
    SnakeBlock6.hidden = YES;
    SnakeBlock7.hidden = YES;
    SnakeBlock8.hidden = YES;
    SnakeBlock9.hidden = YES;
    SnakeBlock10.hidden = YES;
    SnakeBlock11.hidden = YES;
    SnakeBlock12.hidden = YES;
    SnakeBlock13.hidden = YES;
    SnakeBlock14.hidden = YES;
    SnakeBlock15.hidden = YES;
    SnakeBlock16.hidden = YES;
    SnakeBlock17.hidden = YES;
    SnakeBlock18.hidden = YES;
    SnakeBlock19.hidden = YES;
    SnakeBlock20.hidden = YES;
    
    Exit.hidden = NO;
    ExitBG.hidden = NO;
    ExitLabel.hidden = NO;
    
    if (ScoreNumber > HighScoreNumber) {
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"HighScoreSaved"];
        HighScore.text = [NSString stringWithFormat:@"High Score: %i", ScoreNumber];
    }
    
}

- (void)Score
{
    
    ScoreNumber = ScoreNumber + 1 ;
    ScoreLabel.text = [NSString stringWithFormat:@"Score: %i", ScoreNumber];
    
    switch (ScoreNumber) {
        case 1:
            SnakeBlock6.hidden = NO;
            SnakeBlock6inPlay = YES;
            break;
        case 2:
            SnakeBlock7.hidden = NO;
            SnakeBlock7inPlay = YES;
            break;
        case 3:
            SnakeBlock8.hidden = NO;
            SnakeBlock8inPlay = YES;
            break;
        case 4:
            SnakeBlock9.hidden = NO;
            SnakeBlock9inPlay = YES;
            break;
        case 5:
            SnakeBlock10.hidden = NO;
            SnakeBlock10inPlay = YES;
            break;
        case 6:
            SnakeBlock11.hidden = NO;
            SnakeBlock11inPlay = YES;
            break;
        case 7:
            SnakeBlock12.hidden = NO;
            SnakeBlock12inPlay = YES;
            break;
        case 8:
            SnakeBlock13.hidden = NO;
            SnakeBlock13inPlay = YES;
            break;
        case 9:
            SnakeBlock14.hidden = NO;
            SnakeBlock14inPlay = YES;
            break;
        case 10:
            SnakeBlock15.hidden = NO;
            SnakeBlock15inPlay = YES;
            break;
        case 11:
            SnakeBlock16.hidden = NO;
            SnakeBlock16inPlay = YES;
            break;
        case 12:
            SnakeBlock17.hidden = NO;
            SnakeBlock17inPlay = YES;
            break;
        case 13:
            SnakeBlock18.hidden = NO;
            SnakeBlock18inPlay = YES;
            break;
        case 14:
            SnakeBlock19.hidden = NO;
            SnakeBlock19inPlay = YES;
            break;
        case 15:
            SnakeBlock20.hidden = NO;
            SnakeBlock20inPlay = YES;
            break;
            
        default:
            break;
    }
    
}

- (void)PlaceFood
{
    
    FoodX = arc4random() %390;
    FoodX = FoodX + 30;
    
    FoodY = arc4random() %230;
    FoodY = FoodY + 30;
    
    Food.center = CGPointMake(FoodX, FoodY);
    
}

- (void)MoveLeft
{
    
    if(SnakeSideMovement == NO){
        SnakeX = -30;
        SnakeY = 0;
        SnakeSideMovement = YES;
    }
    
}

- (void)MoveRight
{
    
    if(SnakeSideMovement == NO){
        SnakeX = 30;
        SnakeY = 0;
        SnakeSideMovement = YES;
    }
   	
}

- (void)MoveUp
{
    
    if(SnakeSideMovement == YES){
        SnakeX = 0;
        SnakeY = -30;
        SnakeSideMovement = NO;
    }
    
}

- (void)MoveDown
{
    
    if(SnakeSideMovement == YES){
        SnakeX = 0;
        SnakeY = 30;
        SnakeSideMovement = NO;
    }
    
}

- (void)SnakeMoving
{
    
    SnakeBlock20.center = CGPointMake(SnakeBlock19.center.x, SnakeBlock19.center.y);
    SnakeBlock19.center = CGPointMake(SnakeBlock18.center.x, SnakeBlock18.center.y);
    SnakeBlock18.center = CGPointMake(SnakeBlock17.center.x, SnakeBlock17.center.y);
    SnakeBlock17.center = CGPointMake(SnakeBlock16.center.x, SnakeBlock16.center.y);
    SnakeBlock16.center = CGPointMake(SnakeBlock15.center.x, SnakeBlock15.center.y);
    SnakeBlock15.center = CGPointMake(SnakeBlock14.center.x, SnakeBlock14.center.y);
    SnakeBlock14.center = CGPointMake(SnakeBlock13.center.x, SnakeBlock13.center.y);
    SnakeBlock13.center = CGPointMake(SnakeBlock12.center.x, SnakeBlock12.center.y);
    SnakeBlock12.center = CGPointMake(SnakeBlock11.center.x, SnakeBlock11.center.y);
    SnakeBlock11.center = CGPointMake(SnakeBlock10.center.x, SnakeBlock10.center.y);
    SnakeBlock10.center = CGPointMake(SnakeBlock9.center.x, SnakeBlock9.center.y);
    SnakeBlock9.center = CGPointMake(SnakeBlock8.center.x, SnakeBlock8.center.y);
    SnakeBlock8.center = CGPointMake(SnakeBlock7.center.x, SnakeBlock7.center.y);
    SnakeBlock7.center = CGPointMake(SnakeBlock6.center.x, SnakeBlock6.center.y);
    SnakeBlock6.center = CGPointMake(SnakeBlock5.center.x, SnakeBlock5.center.y);
    SnakeBlock5.center = CGPointMake(SnakeBlock4.center.x, SnakeBlock4.center.y);
    SnakeBlock4.center = CGPointMake(SnakeBlock3.center.x, SnakeBlock3.center.y);
    SnakeBlock3.center = CGPointMake(SnakeBlock2.center.x, SnakeBlock2.center.y);
    SnakeBlock2.center = CGPointMake(SnakeBlock1.center.x, SnakeBlock1.center.y);
    SnakeBlock1.center = CGPointMake(SnakeBlock1.center.x + SnakeX, SnakeBlock1.center.y + SnakeY);
    
    if(CGRectIntersectsRect(SnakeBlock1.frame, Food.frame)){
        
        [self PlaceFood];
        [self Score];
    }
    
    if(CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock3.frame)){
        
        [self GameOver];
    }
    
    if(CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock4.frame)){
        
        [self GameOver];
    }
    
    if(CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock5.frame)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock6.frame)) && (SnakeBlock6inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock7.frame)) && (SnakeBlock7inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock8.frame)) && (SnakeBlock8inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock9.frame)) && (SnakeBlock9inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock10.frame)) && (SnakeBlock10inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock11.frame)) && (SnakeBlock11inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock12.frame)) && (SnakeBlock12inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock13.frame)) && (SnakeBlock13inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock14.frame)) && (SnakeBlock14inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock15.frame)) && (SnakeBlock15inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock16.frame)) && (SnakeBlock16inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock17.frame)) && (SnakeBlock17inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock18.frame)) && (SnakeBlock18inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock19.frame)) && (SnakeBlock19inPlay == YES)){
        
        [self GameOver];
    }
    
    if((CGRectIntersectsRect(SnakeBlock1.frame, SnakeBlock20.frame)) && (SnakeBlock20inPlay == YES)){
        
        [self GameOver];
    }
    
    if (SnakeBlock1.center.x < 30) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.x > 450) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.y < 30) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    if (SnakeBlock1.center.y > 290) {
        [SnakeMovement invalidate];
        [self performSelector:@selector(GameOver) withObject:self afterDelay:0.5];
    }
    
    
    
}

- (IBAction)Start:(id)sender
{
    StartGame.hidden = YES;
    
    SnakeMovement = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(SnakeMoving) userInfo:nil repeats:YES];
    
    [self PlaceFood];
    
    Food.hidden = NO;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    HighScore.text = [NSString stringWithFormat:@"High Score: %li", (long)HighScoreNumber];
    
    Exit.hidden = YES;
    ExitBG.hidden = YES;
    ExitBG.layer.cornerRadius = 5;
    ExitLabel.hidden = YES;
    
    StartGame.layer.cornerRadius = 5;
    
    SnakeBlock6.hidden = YES;
    SnakeBlock7.hidden = YES;
    SnakeBlock8.hidden = YES;
    SnakeBlock9.hidden = YES;
    SnakeBlock10.hidden = YES;
    SnakeBlock11.hidden = YES;
    SnakeBlock12.hidden = YES;
    SnakeBlock13.hidden = YES;
    SnakeBlock14.hidden = YES;
    SnakeBlock15.hidden = YES;
    SnakeBlock16.hidden = YES;
    SnakeBlock17.hidden = YES;
    SnakeBlock18.hidden = YES;
    SnakeBlock19.hidden = YES;
    SnakeBlock20.hidden = YES;
    
    SnakeBlock6inPlay = NO;
    SnakeBlock7inPlay = NO;
    SnakeBlock8inPlay = NO;
    SnakeBlock9inPlay = NO;
    SnakeBlock10inPlay = NO;
    SnakeBlock11inPlay = NO;
    SnakeBlock12inPlay = NO;
    SnakeBlock13inPlay = NO;
    SnakeBlock14inPlay = NO;
    SnakeBlock15inPlay = NO;
    SnakeBlock16inPlay = NO;
    SnakeBlock17inPlay = NO;
    SnakeBlock18inPlay = NO;
    SnakeBlock19inPlay = NO;
    SnakeBlock20inPlay = NO;
    
    ScoreNumber = 0;
    ScoreLabel.text = [NSString stringWithFormat:@"Score: 0"];
    
    
    Food.hidden = YES;
    
    SnakeX = 30;
    SnakeY = 0;
    
    SnakeSideMovement = YES;
    
    UISwipeGestureRecognizer *SwipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveLeft)];
    [SwipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:SwipeLeft];
    
    UISwipeGestureRecognizer*SwipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveRight)];
    [SwipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:SwipeRight];
    
    UISwipeGestureRecognizer *SwipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveUp)];
    [SwipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.view addGestureRecognizer:SwipeUp];
    
    UISwipeGestureRecognizer *SwipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(MoveDown)];
    [SwipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:SwipeDown];
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    
    
    ExitBG.layer.cornerRadius = 5;
    StartGame.layer.cornerRadius = 5;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
