//
//  RestrictionsSchemeViewController.h
//  iOS-Sample-Chimera-ObjC
//
//  Created by WataruSuzuki on 2016/09/05.
//  Copyright © 2016年 WataruSuzuki. All rights reserved.
//

#import <UIKit/UIKit.h>

enum {
    GeneralpathAbout,
    GeneralpathACCESSIBILITY,
    AIRPLANE_MODE,
    GeneralpathAUTOLOCK,
    GeneralpathUSAGE_CELLULAR_USAGE,
    Brightness,
    GeneralpathBluetooth,
    GeneralpathDATE_AND_TIME,
    FACETIME,
    General,
    GeneralpathKeyboard,
    CASTLE,
    CASTLE_pathSTORAGE_AND_BACKUP,
    GeneralpathINTERNATIONAL,
    LOCATION_SERVICES,
    ACCOUNT_SETTINGS,
    MUSIC,
    MUSIC_pathEQ,
    MUSIC_pathVolumeLimit,
    GeneralpathNetwork,
    NIKE_PLUS_IPOD,
    NOTES,
    NOTIFICATIONS_ID,
    Phone,
    Photos,
    GeneralpathManagedConfigurationList,
    GeneralpathReset,
    Sounds_pathRingtone,
    Safari,
    GeneralpathAssistant,
    Sounds,
    GeneralpathSOFTWARE_UPDATE_LINK,
    STORE,
    TWITTER,
    GeneralpathUSAGE,
    VIDEO,
    GeneralpathNetwork_VPN,
    Wallpaper,
    WIFI,
    INTERNET_TETHERING,
    MAX_RESTRICTIONS_URL_SCHEMES
};

@interface RestrictionsSchemeViewController : UITableViewController

@end
