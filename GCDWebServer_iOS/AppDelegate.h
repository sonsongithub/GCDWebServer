//
//  AppDelegate.h
//  GCDWebServer_iOS
//
//  Created by sonson on 2013/03/26.
//  Copyright (c) 2013年 sonson. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GCDWebServer.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) GCDWebServer *webServer;

@end
