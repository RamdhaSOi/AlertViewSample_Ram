//
//  ViewController.m
//  AlertViewSample
//
//  Created by Ramdhas on Jun,12.
//  Copyright (c) 2014 Ramdhas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)ShowAlert:(id)sender
{
    alert = [[UIAlertView alloc]initWithTitle:@"Alert Displayed Successfully." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil];
    [alert show];
    
    [self performSelector:@selector(DismissAlertViewAction:) withObject:alert afterDelay:2];
    
}
-(void)DismissAlertViewAction:(UIAlertView *)alertView
{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}
@end
