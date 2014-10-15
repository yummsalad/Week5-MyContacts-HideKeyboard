//
//  MyContactsWeek5ViewController.h
//  MyContactsWeek5
//
//  Created by Cesar Silva on 2/16/14.
//  Copyright (c) 2014 Cesar Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyContactsWeek5ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *txtData;
@property (strong, nonatomic) IBOutlet UITextField *txtFirst;
@property (strong, nonatomic) IBOutlet UITextField *txtLast;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtAddress;
@property (strong, nonatomic) IBOutlet UITextField *txtCity;
@property (strong, nonatomic) IBOutlet UITextField *txtState;
@property (strong, nonatomic) IBOutlet UITextField *txtZip;
@property (strong, nonatomic) IBOutlet UITextField *txtPhone;

- (IBAction)btnSave:(id)sender;

@property (strong, nonatomic) IBOutlet UIScrollView *Scrollview;

-(IBAction) doneEditing:(id) sender;
- (IBAction)btnBack:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnBack;
- (IBAction)btnView:(id)sender;

@end
