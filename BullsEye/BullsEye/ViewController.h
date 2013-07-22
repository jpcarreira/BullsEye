//
//  ViewController.h
//  BullsEye
//
//  Created by João Carreira on 7/17/13.
//  Copyright (c) 2013 João Carreira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// slider as an outlet
@property (nonatomic, strong) IBOutlet UISlider *slider;

// label that displays target value
@property (nonatomic, strong) IBOutlet UILabel *targetLabel;

// label that displays score value
@property (nonatomic, strong) IBOutlet UILabel *scoreLabel;

// label that displays round number
@property (nonatomic, strong) IBOutlet UILabel *roundLabel;

// connected to "touch up inside"
-(IBAction) showAlert;

// connected to slider's "valueChanged"
-(IBAction) sliderMoved: (UISlider *) sender;

@end
