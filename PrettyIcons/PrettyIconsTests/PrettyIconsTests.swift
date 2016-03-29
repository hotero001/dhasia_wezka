//
//  PrettyIconsTests.swift
//  PrettyIconsTests
//
//  Created by Hector Otero on 3/3/16.
//  Copyright © 2016 Hector Otero(alias: John Ramirez)
//

import XCTest
@testable import PrettyIcons

class PrettyIconsTests: XCTestCase {
    
    //let collection = IconTableViewCell()
    let winter_collection = IconSet.winterSet()
    let summer_collection = IconSet.summerSet()
    let desubicados_collection = IconSet.desubicadosSet()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWinterCollectionHasItems() {
        XCTAssert(winter_collection.icons.count > 0, "TEST FAIL: winter collection does not include any items")
    }
    
    func testSummerCollectionHasItems() {
        XCTAssert(summer_collection.icons.count > 0, "TEST FAIL: summer collection does not include any items")
    }
    
    func testDesubicadosCollectionHasItems() {
        XCTAssert(desubicados_collection.icons.count > 0, "TEST FAIL: desubicados collection does not include any items")
    }
    
    func testTestDataLoadTime() {
        measureBlock() {
            self.winter_collection.icons.count
        }
    }
}