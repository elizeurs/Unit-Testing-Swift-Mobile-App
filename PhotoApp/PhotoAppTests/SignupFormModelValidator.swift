//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 27/07/22.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
  
  var sut: SignupFormModelValidator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
  
  func testSignForModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
          
    // Arrange
//    let sut = SignupFormModelValidator()
    
    // Act
    let isFirstNameValid = sut.isFirstNameValid(firstName: "Sergey")
    
    // Assert
    XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name, but returned FALSE")
  }
  
  func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
    
    // Arrange
//    let sut = SignupFormModelValidator()

    // Act
    let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
    
    // Assert
    XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is shorter than \(SignupConstants.firstNameMinLength) characters, but it has returned TRUE")
  }
  
  func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
    
    let isFirstNameValid = sut.isFirstNameValid(firstName: "SergeySergey")
    
    XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is longer than \(SignupConstants.firstNameMaxLength) characters, but it has returned TRUE")
  }
  
  func testSignupFormModelValidator_WhenEqualPasswordsProvided_ShouldReturnTrue() {
    
    let isConfirmPasswordValid = sut.doPasswordsMatch(password: "123456", repeatPassword: "123456")
    
    XCTAssertTrue(isConfirmPasswordValid, "The doPasswordsMatch() should have returned TRUE for matching passwords, but it has returned FALSE")
  }
  
  func testSignupFormModelValidator_WhenEqualPasswordsProvided_ShouldReturnFalse() {
    
    let doPasswordsMatch = sut.doPasswordsMatch(password: "123456", repeatPassword: "12345")
    
    XCTAssertFalse(doPasswordsMatch, "The doPasswordsMatch() should have returned FALSE for matching passwords, but it has returned TRUE")
  }
}
