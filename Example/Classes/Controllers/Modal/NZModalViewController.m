//
//  NZModalViewController.m
//  UIViewController-Modal
//
//  Created by Bruno Tortato Furtado on 14/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZModalViewController.h"
#import "UIViewController+Modal.h"

@interface NZModalViewController ()

- (IBAction)closeClicked;

@end



@implementation NZModalViewController

#pragma mark -
#pragma mark - Actions

- (IBAction)closeClicked
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end