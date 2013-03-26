//
//  AppDelegate.m
//  CGDWebServer(OSX)
//
//  Created by sonson on 2013/03/27.
//
//

#import "AppDelegate.h"

#import "GCDWebServer.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// test start
	GCDWebServer* webServer = [[GCDWebServer alloc] init];
	[webServer addDefaultHandlerForMethod:@"GET"
							 requestClass:[GCDWebServerRequest class]
							 processBlock:^GCDWebServerResponse *(GCDWebServerRequest* request) {
								 return [GCDWebServerDataResponse responseWithHTML:@"<html><body><p>Hello World</p></body></html>"];
							 }];
	[webServer runWithPort:8085];
}

@end
