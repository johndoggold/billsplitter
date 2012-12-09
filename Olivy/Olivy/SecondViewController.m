//
//  SecondViewController.m
//  Olivy
//
//  Created by John Francisco on 8/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
{
    float firstAmt, secondAmt, thirdAmt, forthAmt, fifthAmt, totalPrice, splitAmount;
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
    // Do any additional setup after loading the view from its nib.
    
    [self initialize];
    
    switch(_passedValue) {
        case (1) :
            [self hideFour];
        case (2):
            [self hideThree];
        case (3):     
            [self hideTwo];
        case (4):    
            [self hideOne];
        case (5):
        {
        }       
    }
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fifthSlider:(id)sender {
     UISlider *fifthSlide = (UISlider *)sender;

    float thisValue = fifthSlide.value;
    fifthAmt = thisValue;
    
    [self displayTotal];
    
  
    _fifthTextOutlet.text = [self toString:fifthAmt];

    
}
- (IBAction)thirdSlider:(id)sender {
     UISlider *thirdSlide = (UISlider *)sender;
    float thisValue = thirdSlide.value;
    thirdAmt = thisValue;
    [self displayTotal];
   // _thirdSlideLabel.text = [self toString:thirdAmt];
    _thirdTextOutlet.text = [self toString:thirdAmt];

    
}

- (IBAction)secondSlider:(id)sender {
     UISlider *secondSlide = (UISlider *)sender;
    float thisValue = secondSlide.value;
    secondAmt = thisValue;
    [self displayTotal];
    //_secondSlideLabel.text = [self toString:secondAmt];
    _secondTextOutlet.text = [self toString:secondAmt];
    
}

- (IBAction)firstSlider:(id)sender {
    UISlider *firstSlide = (UISlider *)sender;
    float thisValue = firstSlide.value;
    firstAmt = thisValue;
    [self displayTotal];
   // _firstSlideLabel.text = [self toString:firstAmt];
    _firstTextOutlet.text = [self toString:firstAmt];
}

- (IBAction)forthSlider:(id)sender {
     UISlider *forthSlide = (UISlider *)sender;
    float thisValue = forthSlide.value;
    forthAmt = thisValue;
    [self displayTotal];
    //_forthSlideLabel.text = [self toString:forthAmt];
    _forthTextOutlet.text = [self toString:forthAmt];

}
- (IBAction)splitButton:(id)sender {
    ThirdViewController *thirdView = [[ThirdViewController alloc] init];
    splitAmount = (totalPrice / _passedValue);
    thirdView.passedValue = splitAmount;
    [self.navigationController pushViewController:thirdView animated:YES];
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_firstTextOutlet resignFirstResponder];
    [_secondTextOutlet resignFirstResponder];
    [_thirdTextOutlet resignFirstResponder];
    [_forthTextOutlet resignFirstResponder];
    [_fifthTextOutlet resignFirstResponder];
}

- (void)hideTwo
{
    _forthSlider.hidden = YES;
    _fifthSlider.hidden = YES;

    _forthTextOutlet.hidden = YES;
    _fifthTextOutlet.hidden = YES;
}
- (void)hideOne
{
    _fifthSlider.hidden = YES;
 
    _fifthTextOutlet.hidden = YES;
}
- (void)hideThree
{
    _forthSlider.hidden = YES;
    _fifthSlider.hidden = YES;
    _thirdSlider.hidden = YES;

    _forthTextOutlet.hidden = YES;
    _fifthTextOutlet.hidden = YES;
    _thirdTextOutlet.hidden = YES;
}
- (void)hideFour
{
    _forthSlider.hidden = YES;
    _fifthSlider.hidden = YES;
    _thirdSlider.hidden = YES;

    _secondSlider.hidden = YES;
   
    _forthTextOutlet.hidden = YES;
    _fifthTextOutlet.hidden = YES;
    _thirdTextOutlet.hidden = YES;
    _secondTextOutlet.hidden = YES;
    
}

- (void)initialize
{
    firstAmt = 0;
    secondAmt = 0;
    thirdAmt = 0;
    forthAmt = 0;
    fifthAmt = 0;
}

- (NSString *)toString:(float)foo
{
    NSString *string = [NSString stringWithFormat:@"%.02f", foo];
    return string;
}

- (void)displayTotal
{
    
        totalPrice = (firstAmt + secondAmt + thirdAmt +forthAmt + fifthAmt)*1.17;   
        _totalValue.text = [self toString:totalPrice];
}
- (IBAction)firstTextBox:(id)sender {
    firstAmt = [_firstTextOutlet.text floatValue];
    _firstSlider.value = firstAmt;
    _firstTextOutlet.text = [self toString:firstAmt];
        [self displayTotal];
    
}

- (IBAction)secondTextBox:(id)sender {
    secondAmt = [_secondTextOutlet.text floatValue];
    _secondSlider.value = secondAmt;
    _secondTextOutlet.text = [self toString:secondAmt];
        [self displayTotal];
}

- (IBAction)thirdTextBox:(id)sender {
    thirdAmt = [_thirdTextOutlet.text floatValue];
    _thirdSlider.value = thirdAmt;
    _thirdTextOutlet.text = [self toString:thirdAmt];
        [self displayTotal];
}

- (IBAction)forthTextBox:(id)sender {
   forthAmt = [_forthTextOutlet.text floatValue];
    _forthSlider.value = forthAmt;
    _forthTextOutlet.text = [self toString:forthAmt];
        [self displayTotal];
}

- (IBAction)fifthTextBox:(id)sender {
    fifthAmt = [_fifthTextOutlet.text floatValue];
    _fifthSlider.value = fifthAmt;
    _fifthTextOutlet.text = [self toString:fifthAmt];
        [self displayTotal];
    
}
@end
