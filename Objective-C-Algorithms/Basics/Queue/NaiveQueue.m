//
//  NaiveQueue.m
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import "NaiveQueue.h"

@interface NaiveQueue ()

@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation NaiveQueue

- (id) init {
    if (self == [super init]) {
        self.array = [NSMutableArray new];
    }
    
    return self;
}

- (BOOL) isEmpty {
    return self.array.count == 0;
}

- (NSInteger) count {
    return self.array.count;
}

- (void) enqueue:(id)element {
    [self.array addObject:element];
}

- (id) dequeue {
    if (self.isEmpty) {
        return nil;
    } else {
        id firstObj = [self.array firstObject];
        [self.array removeObject:firstObj];
        return firstObj;
    }
}

- (id) peek {
    return [self.array firstObject];
}

@end
