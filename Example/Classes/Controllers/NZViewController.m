//
//  NZViewController.m
//  UIViewController-Modal
//
//  Created by Bruno Tortato Furtado on 14/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "UIViewController+Modal.h"

@implementation NZViewController

#pragma mark -
#pragma mark - UIViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ([self isModal]) {
        // modal
    } else {
        // not modal
    }
    
    NSString *message = [self isModal] ? @"YES" : @"NO";
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Is modal?"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    
    [alert show];
}

@end