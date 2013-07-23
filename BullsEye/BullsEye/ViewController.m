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

// synthesize = instance variables
@synthesize slider, targetLabel, scoreLabel, roundLabel;

// instance variable to store the value of the slider, current value and score;
int currentValue, targetValue, score, roundNumber;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // commenting out with the addition of startNewRound
    /*
	// this fixes the bug of having 0 in currentValue when the user doesn't move the slider and presses 'Hit Me'
    // we're initializing currentValue to slider's current value
    currentValue = lroundf([self.slider value]);
    */
    
    [self startNewRound];
    [self updateLabels];
}


// updates labels
-(void) updateLabels
{
    [self targetLabel].text = [NSString stringWithFormat: @"%i", targetValue];
    [self scoreLabel].text = [NSString stringWithFormat: @"%i", score];
    [self roundLabel].text = [NSString stringWithFormat: @"%i", roundNumber];
}

// method to start a new round in the game
- (void) startNewRound
{
    // incremeting round
    roundNumber++;
    
    // targetValue is the random number showed in the screen
    targetValue = 1 + (arc4random() % 100);
    
    //currentValue = 50;
    // uncomment below so we can have the current slider position instead of always starting at 50
    currentValue = lroundf([self.slider value]);
    
    [self slider].value = currentValue;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// shows alert when player hit's "Hit Me!" button
- (IBAction)showAlert
{
    int difference = abs(targetValue - currentValue);
    // points awarded to player
    int points = 100 - difference;
    score += points;
    
    NSString *pointsMsg = [NSString stringWithFormat: @"You scored %i points!", points];
    
    NSString *alertTitle = [[NSString alloc] init];
    
    if(difference == 0)
    {
        alertTitle = @"Perfect!";
    }
    else if(difference < 5)
    {
        alertTitle = @"You almost had it!";
    }
    else if(difference < 10)
    {
        alertTitle = @"Not bad!";
    }
    else{
        alertTitle = @"Not even close ...";
    }
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle: alertTitle
                                    message: pointsMsg
                                    delegate: nil
                              cancelButtonTitle: @"OK"
                              otherButtonTitles: nil];
    [alertView show];
    
    // starting a new round
    [self startNewRound];
    [self updateLabels];
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
