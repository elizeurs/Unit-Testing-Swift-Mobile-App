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
  
  // throws: 'cause it can throws an error.
  func testEmailTextField_WhenCreated_HasEmailKeyboardTypeSet() throws {
    let emailTextField = try XCTUnwrap(sut.emailTextField, "Email address UITextField is not connected")
    
    XCTAssertEqual(emailTextField.keyboardType, UIKeyboardType.emailAddress, "Email Address UITextField does not have Email Keyboard type set")
  }
  
  func testPasswordTextField_WhenCreated_IsSecureTextEntryField() throws {
    // passwordTextField might not be connected, try to unwrap it w/ XCTUnwrap() and xctunwrap can throw an error, use 'throws'. and in case password could not be unwrap, add a local(?) message.
    let passwordTextField = try XCTUnwrap(sut.passwordTextField, "The password UITextField is not connected")
    
    // add message, in case test fails.
    XCTAssertTrue(passwordTextField.isSecureTextEntry, "Password UITextField is not a Secury Text Entry Field")
  }
}

