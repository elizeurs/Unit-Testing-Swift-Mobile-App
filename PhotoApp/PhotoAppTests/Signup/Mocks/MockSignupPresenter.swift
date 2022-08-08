//
//  MockSignupPresenter.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 08/08/22.
//

import Foundation
@testable import PhotoApp

class MockSignupPresenter: SignupPresenterProtocol {
  
  var processUserSignupCalled: Bool = false
  
  required init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol) {
    // TODO
  }
  
  func processUserSignup(formModel: SignupFormModel) {
    processUserSignupCalled = true
  }
}
