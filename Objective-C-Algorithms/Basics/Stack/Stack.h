//
//  Stack.h
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

- (NSInteger) count;
- (BOOL) isEmpty;

- (void) push:(id)element;
- (id) pop;
- (id) peek;

@end
