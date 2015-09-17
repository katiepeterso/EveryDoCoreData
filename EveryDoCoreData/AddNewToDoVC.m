//
//  AddNewToDoVC.m
//  EveryDoCoreData
//
//  Created by Katherine Peterson on 2015-09-16.
//  Copyright © 2015 KatieExpatriated. All rights reserved.
//

#import "AddNewToDoVC.h"

@interface AddNewToDoVC ()
@property (strong, nonatomic) IBOutlet UITextField *addNewTitleField;
@property (strong, nonatomic) IBOutlet UITextView *addNewDescriptionView;
@property (strong, nonatomic) IBOutlet UITextField *addNewPriorityField;
@property (strong, nonatomic) IBOutlet UIButton *addNewCompletionButton;
@property (nonatomic) BOOL completionButtonChecked;
@property (weak, nonatomic) IBOutlet UIButton *addOrEditButton;

@end

@implementation AddNewToDoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.addNewCompletionButton setTitle:@"\u2610" forState:UIControlStateNormal];
    self.completionButtonChecked = NO;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated {
    if (self.isEdit) {
        [self editDetailItem:self.editItem];
         self.isEdit = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
}

- (IBAction)markComplete:(UIButton *)sender {
    
    if (self.completionButtonChecked) {
        [self.addNewCompletionButton setTitle:@"\u2610" forState:UIControlStateNormal];
        self.completionButtonChecked = NO;
    }
    else {
        [self.addNewCompletionButton setTitle:@"\u2611" forState:UIControlStateNormal];
        self.completionButtonChecked = YES;
    }
}

- (IBAction)addToDo:(UIButton *)sender {
    [self.delegate sendTitle:self.addNewTitleField.text Description:self.addNewDescriptionView.text Priority:self.addNewPriorityField.text.integerValue Completion:self.completionButtonChecked];
    [sender resignFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)editDetailItem:(ToDo *)toDo {
    [self.addOrEditButton setTitle:@"Update To Do" forState:UIControlStateNormal];
}

@end
