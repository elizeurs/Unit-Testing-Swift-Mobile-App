//
//  PhotoAppUITests.swift
//  PhotoAppUITests
//
//  Created by Elizeu RS on 12/08/22.
//

import XCTest

class SignupFlowUITests: XCTestCase {
  
  private var app: XCUIApplication!
  private var firstName: XCUIElement!
  private var lastName: XCUIElement!
  private var email: XCUIElement!
  private var password: XCUIElement!
  private var repeatPassword: XCUIElement!
  private var signupButton: XCUIElement!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      
      app = XCUIApplication()
      app.launch()
      
      firstName = app.textFields["firstNameTextField"]
      lastName = app.textFields["lastNameTextField"]
      email = app.textFields["emailAddressTextField"]
      password = app.secureTextFields["passwordTextField"]
      repeatPassword = app.secureTextFields["repeatPasswordTextField"]
      signupButton = app.buttons["signupButton"]

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      
      app = nil
      firstName = nil
      lastName = nil
      email = nil
      password = nil
      repeatPassword = nil
      signupButton = nil
      try super.tearDownWithError()
      
    }

    func testSignupViewController_WhenViewloaded_RequiredUIElementsAreEnable() throws {
        // UI tests must launch the application that they test.

//      let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//      element.children(matching: .textField).element(boundBy: 0).tap()
//      element.children(matching: .textField).element(boundBy: 1).tap()
//      element.children(matching: .textField).element(boundBy: 2).tap()
//      element.children(matching: .textField).element(boundBy: 3).tap()
//      element.children(matching: .textField).element(boundBy: 4).tap()
//      app/*@START_MENU_TOKEN@*/.staticTexts["Signup"]/*[[".buttons[\"Signup\"].staticTexts[\"Signup\"]",".staticTexts[\"Signup\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      
//      let app = XCUIApplication() // don't need it. already have it.
      
      XCTAssertTrue(firstName.isEnabled, "First name UITextField is not enabled for user interactions")
      XCTAssertTrue(lastName.isEnabled, "Last name UITextField is not enabled for user interactions")
      XCTAssertTrue(email.isEnabled, "Email address UITextField is not enabled for user interactions")
      XCTAssertTrue(password.isEnabled, "Password UITextField is not enabled for user interactions")
      XCTAssertTrue(repeatPassword.isEnabled, "Repeat password UITextField is not enabled for user interactions")
      XCTAssertTrue(signupButton.isEnabled, "The Signup button is not enabled for user interactions")
      
//      app.staticTexts["Signup"].tap()
                  
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
  
  func testViewController_WhenInvalidFormSubmitted_PresentsErrorAlertDialog() {
    // Arrange
    firstName.tap()
    firstName.typeText("S")
    
    lastName.tap()
    lastName.typeText("K")
    
    email.tap()
    email.typeText("@")
    
    password.tap()
    password.typeText("123456")
    
    repeatPassword.tap()
    repeatPassword.typeText("123")
        
    // Act
    signupButton.tap()
    
    email.screenshot()
    
    let emailTextFieldScreenshot = email.screenshot()
    let emailTextFieldAttachment = XCTAttachment(screenshot: emailTextFieldScreenshot)
    emailTextFieldAttachment.name = "Screenshot of Email UITextField"
    emailTextFieldAttachment.lifetime = .keepAlways
    add(emailTextFieldAttachment)
    
//    let currentAppWindow = app.screenshot()
    let currentAppWindow = XCUIScreen.main.screenshot()
    let currentAppWindowAttachment = XCTAttachment(screenshot: currentAppWindow)
    currentAppWindowAttachment.name = "Signup page screenshot"
    currentAppWindowAttachment.lifetime = .keepAlways
    add(currentAppWindowAttachment)
    
    // Assert
    XCTAssertTrue(app.alerts["errorAlertDialog"].waitForExistence(timeout: 1), "An Error Alert was not presented when invalid signup form was submitted")
    
  }

  func testViewController_WhenValidFormSubmitted_PresentsSuccessAlertDialog() {
    // Arrange
    firstName.tap()
    firstName.typeText("Sergey")
    
    lastName.tap()
    lastName.typeText("Kargopolov")
    
    email.tap()
    email.typeText("test@test.com")
    
    password.tap()
    password.typeText("12345678")
    
    repeatPassword.tap()
    repeatPassword.typeText("12345678")
        
    // Act
    signupButton.tap()
    
    // Assert
    XCTAssertTrue(app.alerts["successAlertDialog"].waitForExistence(timeout: 3), "A Success Alert was not presented when valid signup form was submitted")
    
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
