//
//  DetailViewController.h
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewToDoVC.h"

@class ToDo;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;

@property (nonatomic, weak) id <AddNewToDoDelegate> detailDelegate;

@end

