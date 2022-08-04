//
//  SignupPresenter.swift
//  PhotoApp
//
//  Created by Elizeu RS on 03/08/22.
//

import Foundation

class SignupPresenter {
  
  private var formModelValidator: SignupModelValidatorProtocol
  private var webservice: SignupWebServiceProtocol
  
  init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol) {
    self.formModelValidator = formModelValidator
    self.webservice = webservice
  }
  
  func processUserSignup(formModel: SignupFormModel) {
    
    if !formModelValidator.isFirstNameValid(firstName: formModel.firstName) {
      return
    }
    
    if !formModelValidator.isLastNameValid(lastName: formModel.lastName) {
      return
    }
    
    if !formModelValidator.isValidEmailFormat(email: formModel.email) {
      return
    }
    
    if  !formModelValidator.isPasswordValid(password: formModel.email) {
      return
    }
    
    if !formModelValidator.doPasswordsMatch(password: formModel.password, repeatPassword: formModel.repeatPassword) {
      return
    }
    
    let requestModel = SignupFormRequestModel(firstName: formModel.firstName, lastName: formModel.lastName, email: formModel.email, password: formModel.password)
    
    webservice.signup(withForm: requestModel) { (responseModel, error) in
      // TODO
    }
  }
}
