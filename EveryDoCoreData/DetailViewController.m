//
//  DetailViewController.m
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo.h"

@interface DetailViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *detailPriorityImage;
@property (strong, nonatomic) IBOutlet UILabel *detailTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UIButton *detailCompleteButton;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailTitleLabel.text = self.detailItem.name;
        self.detailDescriptionLabel.text = self.detailItem.details;
        self.detailPriorityImage.image = [UIImage imageNamed:[[NSString stringWithFormat:@"%ld", (long)self.detailItem.priority]stringByAppendingString:@"StarsSmall"]];
        if (self.detailItem.isComplete) {
            [self.detailCompleteButton setTitle:@"\u2611" forState:UIControlStateNormal];
        }
        else {
            [self.detailCompleteButton setTitle:@"\u2610" forState:UIControlStateNormal];
            
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleCompletion:(UIButton *)sender {
    if (self.detailItem.isComplete) {
        self.detailItem.isComplete = NO;
        [self.detailCompleteButton setTitle:@"\u2610" forState:UIControlStateNormal];
    }
    else {
        self.detailItem.isComplete = YES;
        [self.detailCompleteButton setTitle:@"\u2611" forState:UIControlStateNormal];
    }
}


@end
