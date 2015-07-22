//
//  ViewController.m
//  Generic RSS-JSON Parser
//
//  Created by AYLON-4 on 26/01/15.
//  Copyright (c) 2015 AYLON-4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary* aliases = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"aliasTest", @"link", nil];

    
    
    mParser = [Parser sharedInstance];
    mParser.delegate = self;
    
    [mParser requestAsynchronousDataFromRssWith:@"MyChanel" andAlias:aliases andURL:@"http://www.sigmalive.com/rss"];

   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) processAsynchronousRSSComplete:(RSS_Item*)item;
{
    NSLog(@"Asynchronous Task Successfully Complete");
    
}

- (void) processAsynchronousRSSFailed:(NSError *)error
{
    NSLog(@"%@, %@", @"Asynchronous Task Failed",error);
}
@end
