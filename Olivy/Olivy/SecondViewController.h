//
//  SecondViewController.h
//  Olivy
//
//  Created by John Francisco on 8/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdViewController.h"

@interface SecondViewController : UIViewController

@property int passedValue;

// Slider Outlets
@property (strong, nonatomic) IBOutlet UISlider *firstSlider;
@property (strong, nonatomic) IBOutlet UISlider *secondSlider;
@property (strong, nonatomic) IBOutlet UISlider *thirdSlider;
@property (strong, nonatomic) IBOutlet UISlider *forthSlider;
@property (strong, nonatomic) IBOutlet UISlider *fifthSlider;

// Slider Actions
- (IBAction)forthSlider:(id)sender;
- (IBAction)thirdSlider:(id)sender;
- (IBAction)secondSlider:(id)sender;
- (IBAction)firstSlider:(id)sender;
- (IBAction)fifthSlider:(id)sender;



// Textbox Actions
- (IBAction)firstTextBox:(id)sender;
- (IBAction)secondTextBox:(id)sender;
- (IBAction)thirdTextBox:(id)sender;
- (IBAction)forthTextBox:(id)sender;
- (IBAction)fifthTextBox:(id)sender;


// Textbox Outlets
@property (strong, nonatomic) IBOutlet UITextField *fifthTextOutlet;
@property (strong, nonatomic) IBOutlet UITextField *forthTextOutlet;
@property (strong, nonatomic) IBOutlet UITextField *thirdTextOutlet;
@property (strong, nonatomic) IBOutlet UITextField *secondTextOutlet;
@property (strong, nonatomic) IBOutlet UITextField *firstTextOutlet;

// Other UI objects
- (IBAction)splitButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *totalValue;



// Class methods

- (void)hideFour;
- (void)hideTwo;
- (void)hideThree;
- (void)hideOne;
- (void)initialize;
- (NSString*)toString:(float)foo;
- (void)displayTotal;
- (IBAction)touchBackground:(id)sender;


@end
