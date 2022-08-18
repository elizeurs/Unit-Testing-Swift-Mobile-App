//
//  LocalizableScreenshotsExampleUITests.swift
//  LocalizableScreenshotsExampleUITests
//
//  Created by Elizeu RS on 17/08/22.
//

import XCTest

class LocalizableScreenshotsExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupViewController_WhenInvalidFormInformationSubmitted_DisplaysLocalizedErrorAlertMessage() throws {
        // UI tests must launch the application that they test.
      
      // Arrange
        let app = XCUIApplication()
        app.launch()
      
      let passwordTextField = app.secureTextFields["passwordSecureTextField"]
      passwordTextField.tap()
      passwordTextField.typeText("Test")
      
      // Act
      app.buttons["signupButton"].tap()
      
      // Assert
      let alert = app.alerts["signupFormErrorAlertDialog"]
      let alertTitle =  alert.staticTexts.firstMatch.label
      let alertBody = alert.staticTexts.element(boundBy: 1).label
      let alertOkButton = alert.buttons.firstMatch.label
      
      XCTAssertTrue(alert.waitForExistence(timeout: 3))
      
      let currentAppWindow = XCUIScreen.main.screenshot()
      let currentAppWindowAttachment = XCTAttachment(screenshot: currentAppWindow)
      currentAppWindowAttachment.name = "Signup page screenshot"
      currentAppWindowAttachment.lifetime = .keepAlways
      add(currentAppWindowAttachment)
      
      XCTAssertEqual(alertTitle,localizedString("signupErrorAlertTitle"))
      XCTAssertEqual(alertBody, localizedString("signupFormErrorAlertBodyMessage"))
      XCTAssertEqual(alertOkButton, localizedString("signupFormErrorAlertOkButtonTitle"))

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension LocalizableScreenshotsExampleUITests {
  private func localizedString(_ key: String) -> String {
    let uiTestBundle = Bundle(for: LocalizableScreenshotsExampleUITests.self)
    return NSLocalizedString(key, bundle: uiTestBundle, comment: "")
  }
}
