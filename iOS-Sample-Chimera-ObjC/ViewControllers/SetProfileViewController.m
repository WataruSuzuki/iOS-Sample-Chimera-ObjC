//
//  SetProfileViewController.m
//  iOS-Sample-Chimera-ObjC
//
//  Created by WataruSuzuki on 2016/09/09.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

#import "SetProfileViewController.h"
#import <CocoaHTTPServer/HTTPServer.h>

@interface SetProfileViewController ()

@property (nonatomic) NSArray * profileSetCases;
@property (nonatomic) HTTPServer * myHTTPServer;

@end

@implementation SetProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.profileSetCases = @[@"From network",
                             @"From local"];
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
    return MAX_SET_CONFIG_PROFILE;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SetProfileCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.profileSetCases[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case FROM_NETWORK:
            [self installProfileFromNetwork];
            break;
            
        case FROM_LOCAL:
            [self installProfileFromLocal];
            break;
            
        default:
            break;
    }
}

- (void)installProfileFromNetwork
{
    NSString *fromTypeStr = @"https://watarusuzuki.github.io/apn-profiles/resources/nodata.mobileconfig";
    NSURL *url = [NSURL URLWithString:fromTypeStr];
    [[UIApplication sharedApplication] openURL:url];
}

- (void)installProfileFromLocal
{
    self.myHTTPServer = [HTTPServer new];
    [self.myHTTPServer setPort:8080];
    
    NSString *documentsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    [self.myHTTPServer setDocumentRoot:documentsPath];
    NSError *error = nil;
    [self.myHTTPServer start:&error];
    
    NSString* filePath = [documentsPath stringByAppendingPathComponent:@"nodata.mobileconfig"];
    
    NSFileManager* fileManager = [[NSFileManager alloc] init];
    if ([fileManager fileExistsAtPath:filePath]) {
        [fileManager removeItemAtPath:filePath error:&error];
    }
    
    NSString* resourcePath = [[NSBundle mainBundle] pathForResource:@"nodata" ofType:@"mobileconfig"];
    [fileManager copyItemAtPath:resourcePath toPath:filePath error:&error];
    
    NSURL *url = [NSURL URLWithString:@"http://localhost:8080/nodata.mobileconfig"];
    [[UIApplication sharedApplication] openURL:url];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
