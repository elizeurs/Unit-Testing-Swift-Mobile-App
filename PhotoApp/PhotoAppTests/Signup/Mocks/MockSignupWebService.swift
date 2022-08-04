//
//  MockSignupWebService.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 04/08/22.
//

import Foundation
@testable import PhotoApp

class MockSignupWebService: SignupWebServiceProtocol {
  
  var isSignupMethodCalled: Bool = false
  
  func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void) {
    
    isSignupMethodCalled = true
  }
  
}
