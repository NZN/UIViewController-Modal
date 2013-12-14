//
//  UIViewController+Modal.m
//  UIViewController-Modal
//
//  Created by Bruno Tortato Furtado on 14/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "UIViewController+Modal.h"

@implementation UIViewController (Modal)

- (BOOL)isModal
{
    BOOL isModal = ((self.parentViewController && self.parentViewController.modalViewController == self) ||
                    ( self.navigationController && self.navigationController.parentViewController &&
                     self.navigationController.parentViewController.modalViewController == self.navigationController) ||
                    [self.tabBarController.parentViewController isKindOfClass:[UITabBarController class]]);
    
    // iOS 5+
    if (!isModal && [self respondsToSelector:@selector(presentingViewController)]) {
        isModal = ((self.presentingViewController && self.presentingViewController.modalViewController == self) ||
                   (self.navigationController && self.navigationController.presentingViewController &&
                    self.navigationController.presentingViewController.modalViewController == self.navigationController) ||
                   [self.tabBarController.parentViewController isKindOfClass:[UITabBarController class]]);
        
    }
    
    return isModal;
}

@end