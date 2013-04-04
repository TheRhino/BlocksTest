//
//  MMViewController.h
//  BlocksTest
//
//  Created by RHINO on 2/18/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField1;

@property (weak, nonatomic) IBOutlet UITextField *textField2;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)textButton:(id)sender;

@end
