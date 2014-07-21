//
//  KidViewController.m
//  KidSafe_App
//
//  Created by Jorden Whicker on 7/14/14.
//  Copyright (c) 2014 JMW. All rights reserved.
//

#import "KidViewController.h"

@interface KidViewController ()

@end

@implementation KidViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _alertFreq.delegate = self;
    _lowerBound.delegate = self;
    _upperBound.delegate = self;
    _pin.delegate = self;
    _account.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [[self view] endEditing:TRUE];
    
    [_alertFreq resignFirstResponder];
    
    [_lowerBound resignFirstResponder];
    
    [_upperBound resignFirstResponder];

    [_pin resignFirstResponder];

    [_account resignFirstResponder];

}

-(NSString*)getAccountString
{
    return self._account.text;
}

-(NSString*)getPinString
{
    return self._pin.text;
}

-(NSString*)getUpperBoundString
{
    return self._upperBound.text;
}
-(NSString*)getLowerBoundString
{
    return self._lowerBound.text;
}
-(NSString*)getAlertFreqString
{
    return self._alertFreq.text;
}

-(NSString*)totalString
{
    NSString *str = self.getAccountString;
    
    str = [str stringByAppendingString:self.getPinString];
    
    str = [str stringByAppendingString:self.getUpperBoundString];
    
    str = [str stringByAppendingString:self.getLowerBoundString];

    str = [str stringByAppendingString:self.getAlertFreqString];
    
    self._totalString = str;
    
    return self._totalString;
}

-(void)clearTextFields
{
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == _account)
    {
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationBeginsFromCurrentState:YES];
        _account.frame = CGRectMake(_account.frame.origin.x, (_account.frame.origin.y - 100.0), _account.frame.size.width, _account.frame.size.height);
        [UIView commitAnimations];
    } else if (textField == _pin)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _pin.frame = CGRectMake(_pin.frame.origin.x, (_pin.frame.origin.y - 100.0), _pin.frame.size.width, _pin.frame.size.height);
        
        [UIView commitAnimations];
        
    } else if (textField == _lowerBound)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _lowerBound.frame = CGRectMake(_lowerBound.frame.origin.x, (_lowerBound.frame.origin.y - 100.0), _lowerBound.frame.size.width, _lowerBound.frame.size.height);
        [UIView commitAnimations];
        
    } else if (textField == _upperBound)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _upperBound.frame = CGRectMake(_upperBound.frame.origin.x, (_upperBound.frame.origin.y - 100.0), _upperBound.frame.size.width, _upperBound.frame.size.height);
        [UIView commitAnimations];
        
    } else if (textField == _alertFreq)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _alertFreq.frame = CGRectMake(_alertFreq.frame.origin.x, (_alertFreq.frame.origin.y - 100.0), _alertFreq.frame.size.width, _alertFreq.frame.size.height);
        
        [UIView commitAnimations];
    }
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == _account)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _account.frame = CGRectMake(_account.frame.origin.x, (_account.frame.origin.y + 100.0), _account.frame.size.width, _account.frame.size.height);
        
        [UIView commitAnimations];
        
    } else if (textField == _pin)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _pin.frame = CGRectMake(_pin.frame.origin.x, (_pin.frame.origin.y + 100.0), _pin.frame.size.width, _pin.frame.size.height);
        
        [UIView commitAnimations];
        
    } else if (textField == _lowerBound)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _lowerBound.frame = CGRectMake(_lowerBound.frame.origin.x, (_lowerBound.frame.origin.y + 100.0), _lowerBound.frame.size.width, _lowerBound.frame.size.height);
        
        [UIView commitAnimations];
        
    } else if (textField == _upperBound)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _upperBound.frame = CGRectMake(_upperBound.frame.origin.x, (_upperBound.frame.origin.y + 100.0), _upperBound.frame.size.width, _upperBound.frame.size.height);
        
        [UIView commitAnimations];
        
    } else if (textField == _alertFreq)
    {
        [UIView beginAnimations:nil context:NULL];
        
        [UIView setAnimationDelegate:self];
        
        [UIView setAnimationDuration:0.5];
        
        [UIView setAnimationBeginsFromCurrentState:YES];
        
        _alertFreq.frame = CGRectMake(_alertFreq.frame.origin.x, (_alertFreq.frame.origin.y + 100.0), _alertFreq.frame.size.width, _alertFreq.frame.size.height);
        
        [UIView commitAnimations];
        
    }
}


@end
