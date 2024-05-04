//
//  swift_ui2_switch_sideMenuUITestsLaunchTests.swift
//  swift-ui2-switch+sideMenuUITests
//
//  Created by Ann Dosova on 3.05.24.
//

import XCTest

final class swift_ui2_switch_sideMenuUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
