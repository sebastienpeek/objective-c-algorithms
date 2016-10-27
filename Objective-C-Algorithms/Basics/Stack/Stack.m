//
//  Stack.m
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import "Stack.h"

@interface Stack ()

@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation Stack

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

- (void) push:(id)element {
    [self.array addObject:element];
}

- (id) pop {
    id element = [self.array lastObject];
    [self.array removeLastObject];
    
    return element;
}

- (id) peek {
    id element = [self.array lastObject];
    return element;
}

@end
