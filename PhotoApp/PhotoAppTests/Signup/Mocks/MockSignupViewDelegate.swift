//
//  MockSignupViewDelegate.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 04/08/22.
//

import Foundation
import XCTest
@testable import PhotoApp

class MockSignupViewDelegate: signupViewDelegateProtocol {
  
  var expectation: XCTestExpectation?
  
  func successfulSignup() {
    expectation?.fulfill()
  }
  
  func errorHandler(error: SignupError) {
    //
  }
}
