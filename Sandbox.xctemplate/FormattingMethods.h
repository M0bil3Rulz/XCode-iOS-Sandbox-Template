//
//  FormattingMethods.h
//  Sandbox
//
//  Copyright (c) 2012 sourcecodeportal.com. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface FormattingMethods : NSObject

@property(strong, nonatomic) UITextView *messageTextView;

-(id)initWithControl:(UITextView *) textViewControl;

-(void)displayMessage: (NSString *)format, ...;

-(NSString *)trimString: (NSString *)stringToTrim;

-(NSString *) applicationVersion;
-(NSString *) titleOfMessageBox;

@end