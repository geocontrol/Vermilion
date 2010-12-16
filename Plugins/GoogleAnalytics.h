//
//  GoogleAnalytics.h
//  Vermilion
//
//  Created by Mark Simpkins on 13/12/2010.
//  Copyright 2010 springstudios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GANTracker.h"
#import "PhoneGapCommand.h"

@interface GoogleAnalytics : PhoneGapCommand {
	// initialise the tracking object
}

- (void) trackPage:(NSMutableArray*)paramArray withDict:(NSMutableDictionary*)options;

@end
