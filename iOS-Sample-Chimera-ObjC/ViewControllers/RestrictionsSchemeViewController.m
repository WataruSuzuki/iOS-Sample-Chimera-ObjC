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
    
    self.myRestrictionsSchemeList = @[@":root=General&path=About",
                                      @":root=General&path=ACCESSIBILITY",
                                      @":root=AIRPLANE_MODE",
                                      @":root=General&path=AUTOLOCK",
                                      @":root=General&path=USAGE/CELLULAR_USAGE",
                                      @":root=Brightness",
                                      @":root=General&path=Bluetooth",
                                      @":root=General&path=DATE_AND_TIME",
                                      @":root=FACETIME",
                                      @":root=General",
                                      @":root=General&path=Keyboard",
                                      @":root=CASTLE",
                                      @":root=CASTLE&path=STORAGE_AND_BACKUP",
                                      @":root=General&path=INTERNATIONAL",
                                      @":root=LOCATION_SERVICES",
                                      @":root=ACCOUNT_SETTINGS",
                                      @":root=MUSIC",
                                      @":root=MUSIC&path=EQ",
                                      @":root=MUSIC&path=VolumeLimit",
                                      @":root=General&path=Network",
                                      @":root=NIKE_PLUS_IPOD",
                                      @":root=NOTES",
                                      @":root=NOTIFICATIONS_ID",
                                      @":root=Phone",
                                      @":root=Photos",
                                      @":root=General&path=ManagedConfigurationList",
                                      @":root=General&path=Reset",
                                      @":root=Sounds&path=Ringtone",
                                      @":root=SAFARI",
                                      @":root=General&path=Assistant",
                                      @":root=Sounds",
                                      @":root=General&path=SOFTWARE_UPDATE_LINK",
                                      @":root=STORE",
                                      @":root=TWITTER",
                                      @":root=General&path=USAGE",
                                      @":root=VIDEO",
                                      @":root=General&path=Network/VPN",
                                      @":root=Wallpaper",
                                      @":root=WIFI",
                                      @":root=INTERNET_TETHERING"];
    
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
    NSString *prefixStr = @"prefs";
    if ([[UIDevice currentDevice] systemVersion].floatValue >= 10.0) {
        prefixStr = @"app-Prefs";
    }
    NSString *settingScheme = [prefixStr stringByAppendingString:self.myRestrictionsSchemeList[indexPath.row]];
    cell.textLabel.text = settingScheme;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *prefixStr = @"prefs";
    if ([[UIDevice currentDevice] systemVersion].floatValue >= 10.0) {
        prefixStr = @"app-Prefs";
    }
    NSString *settingScheme = [prefixStr stringByAppendingString:self.myRestrictionsSchemeList[indexPath.row]];
    NSURL *url = [NSURL URLWithString:settingScheme];
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
