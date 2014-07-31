//
//  KidTableViewController.h
//  KidSafe_App
//
//  Created by Jorden Whicker on 7/28/14.
//  Copyright (c) 2014 JMW. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KidTableViewController : UITableViewController
{
//    __weak IBOutlet UITextField *account;
//    __weak IBOutlet UITextField *pin;
//    __weak IBOutlet UITextField *alertFreq;
//    __weak IBOutlet UITextField *upperBound;
//    __weak IBOutlet UITextField *lowerBound;
//    __weak IBOutlet UIButton *submit;
//    __weak IBOutlet UIButton *clear;
//
}

@property (nonatomic, weak) IBOutlet UITextField* _account;
@property (nonatomic, weak) IBOutlet UITextField* _pin;
@property (nonatomic, weak) IBOutlet UITextField* _upperBound;
@property (nonatomic, weak) IBOutlet UITextField* _lowerBound;
@property (nonatomic, weak) IBOutlet UITextField* _alertFreq;

@property (weak, nonatomic) IBOutlet UIButton *_submit;
@property (weak, nonatomic) IBOutlet UIButton *_clear;

@property (nonatomic, weak) NSString* _totalString;

@property (weak, nonatomic) IBOutlet UITextView *_instructions;

@property (weak, nonatomic) IBOutlet UITableViewCell *accountCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *pinCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *alertCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *upperCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *lowCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *submitCell;


-(NSString*)getAccountString;
-(NSString*)getPinString;
-(NSString*)getUpperBoundString;
-(NSString*)getLowerBoundString;
-(NSString*)getAlertFreqString;
-(NSString*)totalString;

- (void)clearTextFields;
@end
