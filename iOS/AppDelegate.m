//
//  AppDelegate.m
//  CGDWebServer(iOS)
//
//  Created by sonson on 2013/03/27.
//
//

#import "AppDelegate.h"

#import "GCDWebServer.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// test start
	dispatch_async(dispatch_get_main_queue(), ^(void) {
		GCDWebServer* webServer = [[GCDWebServer alloc] init];
		[webServer addDefaultHandlerForMethod:@"GET"
								 requestClass:[GCDWebServerRequest class]
								 processBlock:^GCDWebServerResponse *(GCDWebServerRequest* request) {
									 return [GCDWebServerDataResponse responseWithHTML:@"<html><body><p>Hello World</p></body></html>"];
								 }];
		[webServer runWithPort:8085];
	});
	
    return YES;
}

@end
