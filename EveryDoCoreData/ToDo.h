//
//  ToDo.h
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDo : NSManagedObject

@property (nonatomic, retain) NSString *details;
@property (nonatomic) BOOL isComplete;
@property (nonatomic, retain) NSString *name;
@property (nonatomic) int16_t priority;
@property (nonatomic) NSDate *timeStamp;

@end
