//
//  StackDataStructureTests.swift
//  Objective-C-Algorithms
//
//  Created by Sebastien Peek on 10/27/16.
//  Copyright © 2016 prototype. All rights reserved.
//

import XCTest

class StackDataStructureTests: XCTestCase {
    
    var stackObj:Stack!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        stackObj = Stack()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPush() {
        stackObj.push(10)
        XCTAssertTrue(stackObj.peek() as! Int == 10)
        
        stackObj.push(3)
        XCTAssertTrue(stackObj.peek() as! Int == 3)
    }
    
    func testPop() {
        
        stackObj.push(10)
        stackObj.push(3)
        
        XCTAssertTrue(stackObj.pop() as! Int == 3)
        XCTAssertTrue(stackObj.pop() as! Int == 10)
    }
    
}
