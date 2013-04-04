//
//  MMViewController.m
//  BlocksTest
//
//  Created by RHINO on 2/18/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

//Creating a new type - typedef
//typedef NSInteger (^addType) (NSInteger, NSInteger);

/*
NSInteger (^add) (NSInteger, NSInteger) = ^(NSInteger int1, NSInteger int2)
                                            {
                                                return int1 + int2;
                                            };
*/
//Turn C Function below into block - lines above
/*  NSInteger add(int1, int2) {
    return 1 + 2;
}
*/ 

@implementation MMViewController

@synthesize textField1, textField2, textLabel;

//-(void)addNumber:(NSInteger)int1 toNumber: (NSInteger)int2 usingBlock:(addType)addBlock{
-(void)addNumber:(NSInteger)int1 toNumber: (NSInteger)int2 usingBlock:(NSInteger(^)(NSInteger, NSInteger))addBlock{
    
    textLabel.text = [NSString stringWithFormat:@"%i", addBlock(int1, int2)];
}

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

- (IBAction)textButton:(id)sender {
    
    [self addNumber:[textField1.text intValue] toNumber:[textField2.text intValue] usingBlock:^
     NSInteger (NSInteger int1, NSInteger int2)
     {
         return int1 + int2;
     }];
    
    //Replace with block above
    //int temp2 = add([textField1.text intValue], [textField2.text intValue]);
    //Replace with temp2 - line above
    //int temp = [textField1.text intValue] + [textField2.text intValue];
    
    //Move to line 35 above
    //textLabel.text = [NSString stringWithFormat:@"%i", temp2];
    //Change temp to temp2 - line above
    //textLabel.text = [NSString stringWithFormat:@"%i", temp];
}

@end
