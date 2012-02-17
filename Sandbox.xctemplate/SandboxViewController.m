//
//  SandboxViewController.m
//  Sandbox
//
//  Copyright (c) 2012 sourcecodeportal.com. All rights reserved.
//
#import "___VARIABLE_classPrefix:identifier___SandboxViewController.h"

@implementation SandboxViewController

@synthesize textView = _textView;
@synthesize formatMethodHandler = _formatMethodHandler;

-(void) sandbox
{
    if( nil != _formatMethodHandler ) {
        [_formatMethodHandler displayMessage: @"Sandbox version %@", _formatMethodHandler.applicationVersion];
        [_formatMethodHandler displayMessage: @"Testing Sandbox"];
    }
    
    
    // Do other things here...
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if( nil == _formatMethodHandler ) _formatMethodHandler = [[FormattingMethods alloc] initWithControl:_textView];

    [self sandbox];
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
