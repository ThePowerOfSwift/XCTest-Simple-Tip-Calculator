//
//  Helper.m
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@implementation Helper: NSObject

BOOL throws(VoidBlock block) {
    
    @try {
        block();
    }
    @catch (NSException *exception) {
        return YES; // if exist an exception
    }
    return NO; // if is'nt does not
    
    
}

@end
