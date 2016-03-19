//
//  Helper.h
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

#ifndef Helper_h
#define Helper_h

#import <Foundation/Foundation.h>

typedef void(^VoidBlock)(void);

@interface Helper: NSObject
BOOL throws(VoidBlock block);
@end

#endif /* Helper_h */
