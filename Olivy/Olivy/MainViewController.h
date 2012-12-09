//
//  MainViewController.h
//  Olivy
//
//  Created by John Francisco on 8/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface MainViewController : UIViewController


- (IBAction)buttonItem:(id)sender;

- (IBAction)peopleCounter:(id)sender;

- (NSString*)toString:(int)foo;

@property (strong, nonatomic) IBOutlet UILabel *outletLabel;


@end
