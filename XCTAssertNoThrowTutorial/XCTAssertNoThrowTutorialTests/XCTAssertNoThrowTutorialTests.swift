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
    
    // Act and Assert
    XCTAssertThrowsError(try sut.isFirstNameValid("Sergey*"), "The isFirstNameValid() should have thrown an error, if user's first name contains illegal characters") { (errorThrown) in
      XCTAssertEqual(errorThrown as? SignupError, SignupError.illegalCharactersFound)
    }
  }
}
