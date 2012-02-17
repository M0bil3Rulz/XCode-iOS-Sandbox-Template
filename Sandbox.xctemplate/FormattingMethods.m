//
//  FormattingMethods.m
//  Sandbox
//
//  Copyright (c) 2012 sourcecodeportal.com. All rights reserved.
//
#import "___VARIABLE_classPrefix:identifier___FormattingMethods.h"

@interface FormattingMethods()

@property(readonly, nonatomic) NSString *applicationVersion;
@property(readonly, nonatomic) NSString *titleOfMessageBox;

@end

@implementation FormattingMethods

@synthesize messageTextView = _messageTextView;

-(id) initWithControl:(UITextView *) textViewControl
{
    self = [super init];
    
    _messageTextView = textViewControl;
    
    return self;
}

-(void) displayMessage: (NSString *)format, ...
{
    va_list args;
    va_start(args, format);

    if( !_messageTextView ) {
        NSLogv( format, args );
        va_end( args );
        return;
    };
    
    NSString *outstr = [[NSString alloc] initWithFormat:format arguments:args];
    
    va_end( args );
    
    if( [_messageTextView.text length] ) {
        _messageTextView.text = [_messageTextView.text stringByAppendingString: @"\n"];
        _messageTextView.text = [_messageTextView.text stringByAppendingString: outstr];
    } else {
        _messageTextView.text = outstr;
    }
  
    [_messageTextView scrollRangeToVisible:(NSRange) { [_messageTextView.text length], 1 }];
}

-(NSString *) trimString: (NSString *)stringToTrim
{
    return [stringToTrim stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(NSString *) applicationVersion
{
    return @"1.0.0";
}

-(NSString *) titleOfMessageBox
{
    return @"Sandbox Test";
}

@end