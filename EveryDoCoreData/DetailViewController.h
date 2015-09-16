//
//  DetailViewController.h
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

