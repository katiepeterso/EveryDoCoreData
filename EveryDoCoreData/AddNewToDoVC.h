//
//  AddNewToDoVC.h
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddNewToDoDelegate <NSObject>

-(void)sendTitle:(NSString *)title Description:(NSString *)description Priority:(NSInteger)priority Completion:(BOOL)isComplete;

@end

@interface AddNewToDoVC : UITableViewController

@property (nonatomic, weak) id <AddNewToDoDelegate> delegate;

@end