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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [[self view] endEditing:TRUE];
    
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


@end
