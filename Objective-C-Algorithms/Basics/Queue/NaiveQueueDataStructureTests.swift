//
//  NaiveQueueDataStructureTests.swift
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

import XCTest

class NaiveQueueDataStructureTests: XCTestCase {
    
    var naiveQueueObj:NaiveQueue!
    
    
    override func setUp() {
        super.setUp()
        naiveQueueObj = NaiveQueue()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEnqueue() {
        naiveQueueObj.enqueue(10)
        naiveQueueObj.enqueue(3)
        naiveQueueObj.enqueue(57)
        XCTAssertTrue(naiveQueueObj.count() == 3)
    }
    
    func testDequeue() {
        naiveQueueObj.enqueue(10)
        naiveQueueObj.enqueue(3)
        naiveQueueObj.enqueue(57)
        XCTAssertTrue(naiveQueueObj.dequeue() as! Int == 10)
        XCTAssertTrue(naiveQueueObj.dequeue() as! Int == 3)
        XCTAssertTrue(naiveQueueObj.dequeue() as! Int == 57)
        XCTAssertNil(naiveQueueObj.dequeue())
    }
    
}
