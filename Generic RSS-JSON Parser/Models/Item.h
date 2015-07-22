//
//  Item.h
//  Generic RSS-JSON Parser
//
//  Created by AYLON-4 on 27/01/15.
//  Copyright (c) 2015 AYLON-4. All rights reserved.
//

#import "Jastor.h"
#import "StringObject.h"

@interface Item : Jastor

//[0]	(null)	@"enclosure" : 4 key/value pairs
@property (nonatomic,retain) StringObject* title;
@property (nonatomic,retain) StringObject* text;
@property (nonatomic,retain) StringObject* pubDate;
@property (nonatomic,retain) StringObject* description;
@property (nonatomic,retain) StringObject* guid;
@property (nonatomic,retain) StringObject* link;

@end
