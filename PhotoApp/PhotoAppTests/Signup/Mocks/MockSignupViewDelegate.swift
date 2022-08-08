//
//  MockSignupViewDelegate.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 04/08/22.
//

import Foundation
import XCTest
@testable import PhotoApp

class MockSignupViewDelegate: SignupViewDelegateProtocol {
  
  var expectation: XCTestExpectation?
  var successfulSignupCounter = 0
  var errorHandlerCounter = 0
  var signupError: SignupError?
  
  func successfulSignup() {
    successfulSignupCounter += 1
    expectation?.fulfill()
  }
  
  func errorHandler(error: SignupError) {
    //
    signupError = error
    errorHandlerCounter += 1
    expectation?.fulfill()
  }
}
