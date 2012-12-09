//
//  MainViewController.m
//  Olivy
//
//  Created by John Francisco on 8/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController {
    int peopleCount;
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
    [super viewDidLoad];
    peopleCount = 1;
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)peopleCounter:(id)sender {
    
    UISlider *mySlider = (UISlider *)sender;
    float fpeopleCount =mySlider.value ;
    peopleCount = (int)fpeopleCount;
    _outletLabel.text = [self toString:peopleCount];
    
}

- (IBAction)buttonItem:(id)sender {
    
    SecondViewController *secondView = [[SecondViewController alloc] init];
    secondView.passedValue = peopleCount;
    
    [self.navigationController pushViewController:secondView animated:YES];
    
}


- (NSString *)toString:(int)foo
{
    NSString *string = [NSString stringWithFormat:@"%i", foo];
    return string;
}

@end
