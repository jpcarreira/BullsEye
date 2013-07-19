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

@synthesize slider;

// instance variable to store the value of the slider
int currentValue;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// this fixes the bug of having 0 in currentValue when the user doesn't move the slider and presses 'Hit Me'
    // we're initializing currentValue to slider's current value
    currentValue = lroundf([self.slider value]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// shows alert when player hit's "Hit Me!" button
- (IBAction)showAlert
{
    NSString *value = [NSString stringWithFormat: @"The value of the slider is %i", currentValue];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle: @"Hello, World"
                                    message: value
                                    delegate: nil
                              cancelButtonTitle: @"OK"
                              otherButtonTitles: nil];
    [alertView show];
}

// added this method (deprecated in iOS 6)
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

-(IBAction) sliderMoved:(UISlider *) sender
{
    // assigns slider value to current value
    currentValue = lroundf([sender value]);
    //NSLog(@"The value of the slider is %i", currentValue);
}
@end
