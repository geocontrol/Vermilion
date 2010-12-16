//
//  PixFileDownload.h
//  FileDownLoadApp
//
//  Created by Aaron saunders on 9/8/10.
//

#import <Foundation/Foundation.h>
#import "PhoneGapCommand.h"


@interface PixFileDownload : PhoneGapCommand {
    NSMutableArray* params;
}

-(void) downloadFile:(NSMutableArray*)paramArray withDict:(NSMutableDictionary*)options;
-(void) downloadComplete; 
-(void) downloadFileFromUrlInBackgroundTask:(NSMutableArray*)paramArray;
-(void) downloadFileFromUrl:(NSMutableArray*)paramArray;
@end