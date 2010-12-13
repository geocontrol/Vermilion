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

//@interface TestPlug : PhoneGapCommand {  
//}  
//- (void)addThemUp:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;  
//@end

@interface GoogleAnalytics : PhoneGapCommand {

	// initialise the tracking object
}

- (void) trackPage:(NSString *)page;

@end
