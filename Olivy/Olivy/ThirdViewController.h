//
//  ThirdViewController.h
//  Olivy
//
//  Created by John Francisco on 8/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController
@property float passedValue;
@property (strong, nonatomic) IBOutlet UILabel *outputLabel;
@property (strong, nonatomic) IBOutlet UIProgressView *bar;

@end
