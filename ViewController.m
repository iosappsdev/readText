//
//  ViewController.m
//  readText
//
//  Created by Ricardo Ruiz on 8/14/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize input;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)button:(id)sender {
    
    // Dismiss Keyboard
    [input resignFirstResponder];
    
    // Loads text from textfield into string
    NSString *userInput = input.text;
    
    // Create alertview pass in string "userInput"
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Title" message:[NSString stringWithFormat:@"User typed: %@",userInput] delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
    
    [alert show];
}

@end
