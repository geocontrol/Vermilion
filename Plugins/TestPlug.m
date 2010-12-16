//
//  TestPlug.m
//  Vermilion
//
//  Created by Mark Simpkins on 13/12/2010.
//  Copyright 2010 springstudios. All rights reserved.
//

#import "TestPlug.h"  
@implementation TestPlug  
- (void)addThemUp:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{  
	NSLog(@"Plugin: TestPlug \n Function: addThemUp\n");
	
	NSUInteger argc = [arguments count];  
	int total = 0;  
	for(int n = 0; n < argc; n++)  
	{  
		total += [[ arguments objectAtIndex:n] intValue];  
	}  
	NSString* retStr = [ NSString stringWithFormat:@"alert(\"%d\");",total];  
	[ webView stringByEvaluatingJavaScriptFromString:retStr ];  
}  
@end  