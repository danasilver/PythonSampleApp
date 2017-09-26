//
//  InitializePython.m
//  PythonSampleApp
//
//  Created by Dana Silver on 9/25/17.
//  Copyright © 2017 Dana Silver. All rights reserved.
//

#import "InitializePython.h"
#import <Python/Python.h>

@implementation InitializePython

- (void)startPython {
    NSString *tmp_path;
    NSString *python_home;
    wchar_t *wpython_home;
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    
    // Special environment to prefer .pyo; also, don't write bytecode
    // because the process will not have write permissions on the device.
    putenv("PYTHONOPTIMIZE=");
    putenv("PYTHONDONTWRITEBYTECODE=1");
    
    python_home = [NSString stringWithFormat:@"%@/Python.framework/Resources", resourcePath, nil];
    NSLog(@"PythonHome is: %@", python_home);
    wpython_home = Py_DecodeLocale([python_home UTF8String], NULL);
    Py_SetPythonHome(wpython_home);
    
    // iOS provides a specific directory for temp files.
    tmp_path = [NSString stringWithFormat:@"TMP=%@/tmp", resourcePath, nil];
    putenv((char *)[tmp_path UTF8String]);
    
    Py_Initialize();
    PyRun_SimpleString("from time import time,ctime\n"
                       "print('Holy shit this is Python! Today is',ctime(time()))\n");
    Py_Finalize();
}

@end
