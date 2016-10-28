//
//  MergeSort.m
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

// Merge sorting has consistent performance

// Worst case performance O(n log n)
// Best case performance O(n log n)
// Average case performance O(n log n)

+ (NSArray *)mergeSort:(NSArray *)unsortedArray {
    
    if ([unsortedArray count] < 2)
    {
        return unsortedArray;
    }
    
    // We want to split the array down the middle.
    long middle = ([unsortedArray count] / 2);
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, ([unsortedArray count] - middle));
    
    NSArray *rightArr = [unsortedArray subarrayWithRange:right];
    NSArray *leftArr = [unsortedArray subarrayWithRange:left];
    
    // Now we want to merge the two arrays after doing another mergeSort
    NSArray *resultArray =[self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
    return resultArray;
}

+ (NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    int right = 0;
    int left = 0;
    while (left < [leftArr count] && right < [rightArr count])
    {
        if ([[leftArr objectAtIndex:left] intValue] < [[rightArr objectAtIndex:right] intValue])
        {
            [result addObject:[leftArr objectAtIndex:left++]];
        }
        else
        {
            [result addObject:[rightArr objectAtIndex:right++]];
        }
    }
    NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
    NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
    NSArray *newRight = [rightArr subarrayWithRange:rightRange];
    NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
    newLeft = [result arrayByAddingObjectsFromArray:newLeft];
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}

@end
