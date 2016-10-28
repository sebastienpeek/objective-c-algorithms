//
//  InsertionSortDataStructureTests.swift
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

import XCTest

class InsertionSortDataStructureTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInsertionSort() {
        
        let list = NSMutableArray(array:[10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ])
        let sortedList = InsertionSort.insertionSort(list) as! Array<Int>
        
        XCTAssertTrue(sortedList.first == -1)
        XCTAssertTrue(sortedList.last == 27)
        
    }
    
}
