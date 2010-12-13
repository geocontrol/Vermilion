//
//  GoogleAnalytics.m
//  Vermilion
//
//  Created by Mark Simpkins on 13/12/2010.
//  Copyright 2010 springstudios. All rights reserved.
//

#import "GANTracker.h"
#import "GoogleAnalytics.h"


@implementation GoogleAnalytics

- (id) init 
{	
	// Google Analytics Dispatch period in seconds
	static const NSInteger kGANDispatchPeriodSec = 600;
	
	NSString *googleAnalyticsId = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"GoogleAnalyticsId"];
	[[GANTracker sharedTracker] startTrackerWithAccountID:googleAnalyticsId
										   dispatchPeriod:kGANDispatchPeriodSec
												 delegate:nil];

	NSLog(@"Start Google Analytics");
	
	return [super init];
}


- (void) trackPage:(NSString *)page
{
	NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
	NSString *fullpath = [NSString stringWithFormat:@"/v%@/%@",version,page];
	
	NSLog(@"trackPage: %@",fullpath);
	
	NSError *error;
	if (![[GANTracker sharedTracker] trackPageview:fullpath
										 withError:&error]) {
		// Handle error here
		NSLog(@"error tracking %@ %@",fullpath,[error description]);
	}
	
}

@end
