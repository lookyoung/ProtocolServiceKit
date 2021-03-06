//
//  LFLAppDelegate.m
//  ProtocolServiceManger
//
//  Created by DevdragonLi on 07/18/2020.
//  Copyright (c) 2020 DevdragonLi. All rights reserved.
//

#import "LFLAppDelegate.h"

#import <ProtocolServiceKit/ProtocolServiceKit.h>

//#import "LFLUnRuleProtocol.h"
//#import "LFLTestRuleIMP.h"

@implementation LFLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //    NSDictionary *mapDic = @{
    //        NSStringFromProtocol(@protocol(LFLUnRuleProtocol)):[LFLTestRuleIMP class]
    //    };
    NSDictionary *mapDic = @{
        @"LFLUnRuleProtocol":@"LFLTestRuleIMP"
    };
    // 项目Map较多，可plist文件维护！
    [[ProService sharedManger] configProtocolServiceMapsWithDic:mapDic];
    
    return YES;
}

@end
