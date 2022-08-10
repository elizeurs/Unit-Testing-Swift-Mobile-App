//
//  SignupFormValidator.swift
//  XCTAssertNoThrowTutorial
//
//  Created by Elizeu RS on 10/08/22.
//

import Foundation

class SignupFormModelValidator {
  private let invalidCharacters = CharacterSet(charactersIn: "{}$#%*&^.,?!@")
  
  func isFirstNameValid(_ firstName: String) throws -> Bool {
    var returnValue = true
    
    // Check for illegal characters
    if (firstName.rangeOfCharacter(from: invalidCharacters) != nil) {
      throw SignupError.illegalCharactersFound
    }
    
    // check first name
    if firstName.count  < 2 || firstName.count > 10 {
      returnValue = false
    }
    
    return returnValue
  }
}
