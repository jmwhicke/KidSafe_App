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

-(NSString*)getAccountString {
    return self._account.text;
}



@end
