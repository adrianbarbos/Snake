//
//  ViewController.m
//  Snake
//
//  Created by Delta on 7/18/14.
//  Copyright (c) 2014 AKA Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize button1;

- (void)viewDidLoad

{
    button1.layer.cornerRadius = 5;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated{
    button1.layer.cornerRadius = 5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonCLicked:(id)sender
{
    ViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"Second"];
    [self.navigationController pushViewController:controller animated:YES];
    
    
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
