//
//  ViewController.m
//  sweeps
//
//  Created by Corey Brady on 8/30/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Hide the status bar
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    //Start at the app bundle and then go to the directory that contains your webapp
    NSString *path = [[[NSBundle mainBundle] resourcePath]
                      stringByAppendingPathComponent:@"web"];
    //Specify the starting file, index.html in this case
    NSURL *gameURL = [NSURL fileURLWithPath:[path
                                             stringByAppendingPathComponent:@"sweeps.html" ]];
    NSURLRequest *URLReq = [NSURLRequest requestWithURL:gameURL];
    //Scale the view based on content (not mandatory, but a good practice)
    _sweepsWebView.scalesPageToFit = YES;
    _sweepsWebView.autoresizesSubviews = YES;
    _sweepsWebView.autoresizingMask=(UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    //Add this to enable webview scrolling
    //_sweepsWebView.scrollView.scrollEnabled = TRUE;
    
    //Add this line so the webapp doesn't rubber-band scroll by default
    _sweepsWebView.scrollView.bounces = NO;
    //load webview
    [_sweepsWebView loadRequest:URLReq];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
