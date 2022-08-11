//
//  TestingUITextFieldPropertiesTests.swift
//  TestingUITextFieldPropertiesTests
//
//  Created by Elizeu RS on 10/08/22.
//

import XCTest
@testable import TestingUITextFieldProperties

class TestingUITextFieldPropertiesTests: XCTestCase {
  
  var sut: SignupViewController!

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
      sut = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
      
      sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
  
  func testEmailTextField_WhenCreated_HasEmailAddressContentTypeSet() throws {
    let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected")
    
    XCTAssertEqual(emailTextField.textContentType, .emailAddress, "Email address UITextField does not have an Email Address Content set")
  }
}
