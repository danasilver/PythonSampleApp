//
//  InitializePython.h
//  PythonSampleApp
//
//  Created by Dana Silver on 9/25/17.
//  Copyright © 2017 Dana Silver. All rights reserved.
//

#ifndef InitializePython_h
#define InitializePython_h

#import <Foundation/Foundation.h>

@interface PythonBridge : NSObject

+ (void) startPython;
+ (void) finishPython;
+ (void) run:(NSString *)string;
+ (void) runFile:(NSString *)filename;

@end


#endif /* InitializePython_h */
