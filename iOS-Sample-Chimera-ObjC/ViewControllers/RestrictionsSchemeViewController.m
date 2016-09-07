//
//  RestrictionsSchemeViewController.m
//  iOS-Sample-Chimera-ObjC
//
//  Created by WataruSuzuki on 2016/09/05.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

#import "RestrictionsSchemeViewController.h"

@interface RestrictionsSchemeViewController ()

@property (nonatomic) NSArray * myRestrictionsSchemeList;

@end

@implementation RestrictionsSchemeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myRestrictionsSchemeList = @[@"prefs:root=General&path=About",
                                      @"prefs:root=General&path=ACCESSIBILITY",
                                      @"prefs:root=AIRPLANE_MODE",
                                      @"prefs:root=General&path=AUTOLOCK",
                                      @"prefs:root=General&path=USAGE/CELLULAR_USAGE",
                                      @"prefs:root=Brightness",
                                      @"prefs:root=General&path=Bluetooth",
                                      @"prefs:root=General&path=DATE_AND_TIME",
                                      @"prefs:root=FACETIME",
                                      @"prefs:root=General",
                                      @"prefs:root=General&path=Keyboard",
                                      @"prefs:root=CASTLE",
                                      @"prefs:root=CASTLE&path=STORAGE_AND_BACKUP",
                                      @"prefs:root=General&path=INTERNATIONAL",
                                      @"prefs:root=LOCATION_SERVICES",
                                      @"prefs:root=ACCOUNT_SETTINGS",
                                      @"prefs:root=MUSIC",
                                      @"prefs:root=MUSIC&path=EQ",
                                      @"prefs:root=MUSIC&path=VolumeLimit",
                                      @"prefs:root=General&path=Network",
                                      @"prefs:root=NIKE_PLUS_IPOD",
                                      @"prefs:root=NOTES",
                                      @"prefs:root=NOTIFICATIONS_ID",
                                      @"prefs:root=Phone",
                                      @"prefs:root=Photos",
                                      @"prefs:root=General&path=ManagedConfigurationList",
                                      @"prefs:root=General&path=Reset",
                                      @"prefs:root=Sounds&path=Ringtone",
                                      @"prefs:root=Safari",
                                      @"prefs:root=General&path=Assistant",
                                      @"prefs:root=Sounds",
                                      @"prefs:root=General&path=SOFTWARE_UPDATE_LINK",
                                      @"prefs:root=STORE",
                                      @"prefs:root=TWITTER",
                                      @"prefs:root=General&path=USAGE",
                                      @"prefs:root=VIDEO",
                                      @"prefs:root=General&path=Network/VPN",
                                      @"prefs:root=Wallpaper",
                                      @"prefs:root=WIFI",
                                      @"prefs:root=INTERNET_TETHERING"];
    
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
    return MAX_RESTRICTIONS_URL_SCHEMES;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RestrictionsSchemeCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.myRestrictionsSchemeList[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSURL *url = [NSURL URLWithString:self.myRestrictionsSchemeList[indexPath.row]];
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
