//
//  NaiveQueue.h
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NaiveQueue : NSObject

- (BOOL) isEmpty;
- (NSInteger) count;

- (void) enqueue:(id)element;
- (id) dequeue;
- (id) peek;

@end
