//
//  SignupViewControllerTests.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 06/08/22.
//

import XCTest
@testable import PhotoApp

class SignupViewControllerTests: XCTestCase {
  
  var storyboard: UIStoryboard!
  var sut: SignupViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let sut = storyboard.instantiateViewController(identifier:
                                                      "SignupViewController" ) as? SignupViewController
      sut?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      
      // release resources
      storyboard = nil
      sut = nil
    }

  func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
    
    XCTAssertEqual(sut?.firstNameTextField.text, "", "First name text field was not empty when the view controller initially loaded")
    XCTAssertEqual(sut?.lastNameTextField.text, "", "Last name text field was not empty when the view controller initially loaded")
    XCTAssertEqual(sut?.emailTextField.text, "", "Email text field was not empty when the view controller initially loaded")
    XCTAssertEqual(sut?.passwordTextField.text, "", "Password text field was not empty when the view controller initially loaded")
    XCTAssertEqual(sut?.repeatPasswordTextField.text, "", "Repeat Password text field was not empty when the view controller initially loaded")
  }
}
