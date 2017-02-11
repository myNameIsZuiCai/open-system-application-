//
//  ViewController.m
//  打开系统的应用程序
//
//  Created by 上海均衡 on 2016/10/21.
//  Copyright © 2016年 上海均衡. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)call:(id)sender {

    
    [self openURL:@"tel://10086"];
    
    
}
- (IBAction)sendMessage:(id)sender {
    [self openURL:@"sms://10086"];
    
    
}
- (IBAction)jumpToSetting:(id)sender {
    /*
        如果系统版本小于10.0
     NSURL *url= [NSURL URLWithString:@"prefs:root=LOCATION_SERVICES"];
     if( [[UIApplication sharedApplication]canOpenURL:url] ) {
     [[UIApplication sharedApplication]openURL:url];
     }
     */
    //系统版本大于10.0的时候
    NSURL *url= [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if( [[UIApplication sharedApplication]canOpenURL:url] ) {
        [[UIApplication sharedApplication]openURL:url options:@{}completionHandler:^(BOOL        success) {
        }];
    }
//    NSLog(@"%@",)
}
-(void)openURL:(NSString *)url1{
    NSURL *url=[NSURL URLWithString:url1];

    NSMutableDictionary *dic=[NSMutableDictionary dictionary];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url options:dic completionHandler:nil];
    }
}
/*
 About — prefs:root=General&path=About
 Accessibility — prefs:root=General&path=ACCESSIBILITY
 Airplane Mode On — prefs:root=AIRPLANE_MODE
 Auto-Lock — prefs:root=General&path=AUTOLOCK
 Brightness — prefs:root=Brightness
 Bluetooth — prefs:root=General&path=Bluetooth
 Date & Time — prefs:root=General&path=DATE_AND_TIME
 FaceTime — prefs:root=FACETIME
 General — prefs:root=General
 Keyboard — prefs:root=General&path=Keyboard
 iCloud — prefs:root=CASTLE
 iCloud Storage & Backup — prefs:root=CASTLE&path=STORAGE_AND_BACKUP
 International — prefs:root=General&path=INTERNATIONAL
 Location Services — prefs:root=LOCATION_SERVICES
 Music — prefs:root=MUSIC
 Music Equalizer — prefs:root=MUSIC&path=EQ
 Music Volume Limit — prefs:root=MUSIC&path=VolumeLimit
 Network — prefs:root=General&path=Network
 Nike + iPod — prefs:root=NIKE_PLUS_IPOD
 Notes — prefs:root=NOTES
 Notification — prefs:root=NOTIFICATIONS_ID
 Phone — prefs:root=Phone
 Photos — prefs:root=Photos
 Profile — prefs:root=General&path=ManagedConfigurationList
 Reset — prefs:root=General&path=Reset
 Safari — prefs:root=Safari
 Siri — prefs:root=General&path=Assistant
 Sounds — prefs:root=Sounds
 Software Update — prefs:root=General&path=SOFTWARE_UPDATE_LINK
 Store — prefs:root=STORE
 Twitter — prefs:root=TWITTER
 Usage — prefs:root=General&path=USAGE
 VPN — prefs:root=General&path=Network/VPN
 Wallpaper — prefs:root=Wallpaper
 Wi-Fi — prefs:root=WIFI
 蜂窝数据 — prefs:root=MOBILE_DATA_SETTINGS_ID
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
