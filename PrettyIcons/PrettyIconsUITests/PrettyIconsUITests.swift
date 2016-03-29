//
//  PrettyIconsUITests.swift
//  PrettyIconsUITests
//
//  Created by Hector Otero on 3/3/16.

import XCTest

class PrettyIconsUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHomeScreen() {
        let startTitleLabel = app.navigationBars.staticTexts["YosStoP"]
        XCTAssertTrue(startTitleLabel.exists, "Should be on the home screen")
    }
    
    func testVideoSelectAndBackHome() {
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pare De Sufrir"].tap()
        
        app.navigationBars["PrettyIcons.EditTableView"].buttons["YosStoP"].tap()
        
        let startTitleLabel = app.navigationBars.staticTexts["YosStoP"]
        XCTAssertTrue(startTitleLabel.exists, "Should be back on the home screen")
    }
    
    func testStaticTitlePresence() {
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pare De Sufrir"].tap()
        
        XCTAssert(tablesQuery.staticTexts["Titulo"].exists)
    }
    
    func testStaticInstagramPresence() {
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Pare De Sufrir"].tap()
        
        XCTAssert(tablesQuery.staticTexts["Instagram"].exists)
    }
    
    //The main goal in the test below is to make sure there is a video present. The reason I exit immediately back home is because I do not know how to simply test for the presence of the video. But if this test passes, it verifies the presence of a video. Test also seems to fail occassionally bc of insufficient load time for the video to appear. May want to look into how to pause a test for a few seconds before resuming. Also, checking for internet connection first.
    func testPlayVideoAndExitImmediatelyHome() {
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["2/27/2016"].tap()
        tablesQuery.buttons["Watch PARE DE SUFRIR!"].tap()
        app.navigationBars["PrettyIcons.EditTableView"].buttons["YosStoP"].tap()
        
        let startTitleLabel = app.navigationBars.staticTexts["YosStoP"]
        XCTAssertTrue(startTitleLabel.exists, "Should be back on home screen")
    }
}
