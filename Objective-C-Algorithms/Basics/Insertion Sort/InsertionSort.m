//
//  InsertionSort.m
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

+ (NSArray *)insertionSort:(NSMutableArray *)unsortedArray {
    
    long count = unsortedArray.count;
    int x,y;
    for (x=1; x<count; x++)
    {
        y = x;
        while(y > 0 &&
              [[unsortedArray objectAtIndex:(y-1)] intValue] > [[unsortedArray objectAtIndex:y] intValue])
        {
            [unsortedArray exchangeObjectAtIndex:y withObjectAtIndex:(y - 1)];
            y = y - 1;
        }
    }
    return unsortedArray;
}

@end
