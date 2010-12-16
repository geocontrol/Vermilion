//
//  GoogleAnalytics.m
//  Vermilion
//
//  Created by Mark Simpkins on 13/12/2010.
//  Copyright 2010 springstudios. All rights reserved.
//

#import "GoogleAnalytics.h"


@implementation GoogleAnalytics

- (void) trackPage:(NSMutableArray*)paramArray withDict:(NSMutableDictionary*)options
{
	NSString * page = [paramArray objectAtIndex:0];
	NSLog(@"Plugin: GoogleAnalytics \nFunction: trackPage \nParameter: %@\n", page);
	
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
