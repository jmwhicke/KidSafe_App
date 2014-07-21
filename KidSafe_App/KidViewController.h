//
//  KidViewController.h
//  KidSafe_App
//
//  Created by Jorden Whicker on 7/14/14.
//  Copyright (c) 2014 JMW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KidViewController : UIViewController
{
    UITextField* _alertFreq;
    UITextField* _lowerBound;
    UITextField* _upperBound;
    UITextField* _pin;
    UITextField* _account;
}

// @property (nonatomic, weak) IBOutlet UIBarButtonItem* _help;

@property (nonatomic, weak) IBOutlet UIButton* _contact;

@property (nonatomic, weak) IBOutlet UITextField* _account;
@property (nonatomic, weak) IBOutlet UITextField* _pin;
@property (nonatomic, weak) IBOutlet UITextField* _upperBound;
@property (nonatomic, weak) IBOutlet UITextField* _lowerBound;
@property (nonatomic, weak) IBOutlet UITextField* _alertFreq;

@property (nonatomic, weak) NSString* _totalString;


-(NSString*)getAccountString;
-(NSString*)getPinString;
-(NSString*)getUpperBoundString;
-(NSString*)getLowerBoundString;
-(NSString*)getAlertFreqString;
-(NSString*)totalString;

- (void)textFieldDidBeginEditing:(UITextField *)textField;
- (void)textFieldDidEndEditing:(UITextField *)textField;

- (void)clearTextFields;
@end
