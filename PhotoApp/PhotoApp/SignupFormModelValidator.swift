//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Elizeu RS on 27/07/22.
//

import Foundation

class SignupFormModelValidator {
  
  func isFirstNameValid(firstName: String) -> Bool {
    var returnValue = true
    
    if firstName.count < 2 {
      returnValue = false
    }
    
//    if firstName.isEmpty {
//      returnValue = false
//    }
    
    return returnValue
  }
}
