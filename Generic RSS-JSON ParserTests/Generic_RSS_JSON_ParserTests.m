//
//  Generic_RSS_JSON_ParserTests.m
//  Generic RSS-JSON ParserTests
//
//  Created by AYLON-4 on 26/01/15.
//  Copyright (c) 2015 AYLON-4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Parser.h"
#import "MyChanel.h"
#import "Weather.h"



@interface Generic_RSS_JSON_ParserTests : XCTestCase

@end

@implementation Generic_RSS_JSON_ParserTests






- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


-(void)testSimpleFetchRSS
{
    /*
     http://www.sigmalive.com/rss
     http://www.pbs.org/wgbh/nova/rss/nova.xml
     http://www.ant1iwo.com/rss/news/
     */
    
    NSDictionary* aliases = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"aliasTest", @"link", nil];
    
    RSS_Item* get = [[Parser sharedInstance] requestSynchronousDataFromRssWith:@"MyChanel" andAlias:aliases andURL:@"http://www.sigmalive.com/rss"];

    
    XCTAssertNotEqualObjects(get, nil);

}


- (void) testSimpleFetchJSON
{
    
    //	private static final String JSON_URL = "http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139";
    
    Weather* get = [[Parser sharedInstance] requestSynchronousDataFromJsonWithClass:@"Weather" andAlias:nil andURL:@"http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139"];
    
    
    XCTAssertNotEqualObjects(get, nil);

    

}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
