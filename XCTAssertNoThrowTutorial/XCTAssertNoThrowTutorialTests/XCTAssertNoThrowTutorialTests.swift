//
//  XCTAssertNoThrowTutorialTests.swift
//  XCTAssertNoThrowTutorialTests
//
//  Created by Elizeu RS on 10/08/22.
//

import XCTest
@testable import XCTAssertNoThrowTutorial

class XCTAssertNoThrowTutorialTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
  
  func testFirstNameValidation_WhenInvalidCharactersProvided_ThrowsAnError() {
    // Arrange
    let sut = SignupFormModelValidator()
    
    // XCTAssertThrowsError better than Do Try and Catch, 'cause you write less code.
    
    // Act and Assert
//    XCTAssertThrowsError(try sut.isFirstNameValid("Sergey*"), "The isFirstNameValid() should have thrown an error, if user's first name contains illegal characters") { (errorThrown) in
//      XCTAssertEqual(errorThrown as? SignupError, SignupError.illegalCharactersFound)
//    }
    
    do {
      let _ = try sut.isFirstNameValid("Sergey*")
      XCTFail("The isFirstNameValid() was supposed to throw an error, when illegal characters used in User's first name")
    } catch SignupError.illegalCharactersFound {
      // Successfully passing
      return
    } catch {
      XCTFail("The isFirstNameValid() was supposed to throw the SignupError.illegalCharactersFound Error, when illegal characters used. A different Error was thrown.")
      return
    }
  }
  
  func testFirstNameValidation_WhenValidCharactersProvided_ThrowsNoErrors() {
    // Assert
    let sut = SignupFormModelValidator()
    
    // Act and Assert
//    XCTAssertNoThrow(try sut.isFirstNameValid("Sergey"), "The isFirstNameValid() should not have thrown an error, when there are no illegal characters provided.")
    
    do {
      // making it fail
      // let _ = try sut.isFirstNameValid("Sergey*")
      let _ = try sut.isFirstNameValid("Sergey")
    } catch {
      XCTFail("The isFirstNameValid() was not supposed to throw an Error, when a valid First Name value was provided")
    }
  }
}
