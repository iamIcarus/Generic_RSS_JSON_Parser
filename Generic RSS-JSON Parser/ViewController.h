//
//  ViewController.h
//  Generic RSS-JSON Parser
//
//  Created by AYLON-4 on 26/01/15.
//  Copyright (c) 2015 AYLON-4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Parser.h"

@interface ViewController : UIViewController <ParserDelegate>
{
    Parser *mParser;
}
@end

