//
//  MyContactsWeek5ViewController.m
//  MyContactsWeek5
//
//  Created by Charles Konkol on 2/16/14.
//  Copyright (c) 2014 Chuck Konkol. All rights reserved.
//

#import "MyContactsWeek5ViewController.h"

@interface MyContactsWeek5ViewController ()

@end

@implementation MyContactsWeek5ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    CGSize size = [self getScreenSize];
    self.Scrollview .frame = CGRectMake(0, 50, size.width, size.height);
    //[self.Scrollview  setContentSize:CGSizeMake(320, 1064)];
}
-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [self.txtFirst resignFirstResponder];
    [self.txtLast resignFirstResponder];
    [self.txtEmail resignFirstResponder];
    [self.txtData resignFirstResponder];
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}

- (IBAction)btnSave:(id)sender {
    //hide keyboard
    [self dismissKeyboard];

//save
    //format
    if ([self.txtData.text  isEqual:@""])
    {
        self.txtData.text = @"MyContacts";
    }
    self.txtData.text = [NSString stringWithFormat:@"%@\n\nFirstname:%@\nLastName:%@\nEmail:%@",
                     self.txtData.text,self.txtFirst.text,self.txtLast.text,self.txtEmail.text];
    
    self.txtFirst.text = @"";
    self.txtLast.text = @"";
   self.txtEmail.text = @"";
   
    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
    [self.Scrollview  setContentOffset:scrollPoint animated:YES];
}
- (IBAction)btnBack:(id)sender {
    //get back
        [self.Scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.Scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.Scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.Scrollview  setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.Scrollview  setContentOffset:CGPointZero animated:YES];
}
- (IBAction)btnView:(id)sender {
    //hide keyboard
    [self dismissKeyboard];
    //load voew
    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
    [self.Scrollview  setContentOffset:scrollPoint animated:YES];
}
@end
