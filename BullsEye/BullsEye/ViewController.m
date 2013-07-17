//
//  ViewController.m
//  BullsEye
//
//  Created by João Carreira on 7/17/13.
//  Copyright (c) 2013 João Carreira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// shows alert when player hit's "Hit Me!" button
- (IBAction)showAlert
{
    //
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle: @"Hello, World"
                                    message: @"Welcome to Bull's Eye"
                                    delegate: nil
                              cancelButtonTitle: @"Awesome"
                              otherButtonTitles: nil];
    [alertView show];
}


@end
