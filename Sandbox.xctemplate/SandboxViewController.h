//
//  SandboxViewController.h
//  Sandbox
//
//  Copyright (c) 2012 sourcecodeportal.com. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "___VARIABLE_classPrefix:identifier___FormattingMethods.h"

@interface SandboxViewController : UIViewController

@property(weak, nonatomic) IBOutlet UITextView *textView;
@property(strong, nonatomic) FormattingMethods *formatMethodHandler;

@end
