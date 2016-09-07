//
//  MySamplesListViewController.m
//  iOS-Sample-Chimera-ObjC
//
//  Created by WataruSuzuki on 2016/08/12.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

#import "MySamplesListViewController.h"

@interface MySamplesListViewController ()

@property (nonatomic) NSArray * mySamplesList;

@end

@implementation MySamplesListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mySamplesList = @[@"Demo-GoogleMaps-SDK",
                           @"Restrictions URL Scheme",
                           @"(・∀・)"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MENU_MAX;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MySamplesListCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.mySamplesList[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:self.mySamplesList[indexPath.row] sender:self];
}

#pragma mark - Navigation
 
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
