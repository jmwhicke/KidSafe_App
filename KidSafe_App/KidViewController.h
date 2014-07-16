//
//  KidViewController.h
//  KidSafe_App
//
//  Created by Jorden Whicker on 7/14/14.
//  Copyright (c) 2014 JMW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KidViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIBarButtonItem* _quit;

@property (nonatomic, weak) IBOutlet UIButton* _contact;
@property (nonatomic, weak) IBOutlet UIButton* _submit;

@property (nonatomic, weak) IBOutlet UITextField* _account;
@property (nonatomic, weak) IBOutlet UITextField* _pin;
@property (nonatomic, weak) IBOutlet UITextField* _upperBound;
@property (nonatomic, weak) IBOutlet UITextField* _lowerBound;
@property (nonatomic, weak) IBOutlet UITextField* _alertFreq;

@property (nonatomic, weak) NSString* _totalString;

// Need to create methods that retrieve the contents in the text field and convert them to strings.

-(NSString*)getAccountString;
-(NSString*)getPinString;
-(NSString*)getUpperBoundString;
-(NSString*)getLowerBoundString;
-(NSString*)getAlertFreqString;
-(NSString*)totalString;

@end
