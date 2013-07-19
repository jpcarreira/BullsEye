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

// connected to "touch up inside"
-(IBAction) showAlert;

// connected to slider's "valueChanged"
-(IBAction) sliderMoved: (UISlider *) sender;

@end
