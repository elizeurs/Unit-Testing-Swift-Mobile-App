//
//  SignupPresenterTests.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 02/08/22.
//

import XCTest
@testable import PhotoApp

class SignupPresenterTests: XCTestCase {
  
  var signupFormModel: SignupFormModel!
  var mockSignupModelValidator: MockSignupModelValidator!
  var mockSignupWebService: MockSignupWebService!
  var sut: SignupPresenter!
  var mockSignupViewDelegate: MockSignupViewDelegate!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
      signupFormModel = SignupFormModel(firstName: "Sergey",
                                            lastName: "Kargopolov",
                                            email: "test@test.com",
                                            password: "12345678",
                                            repeatPassword: "12345678")
      mockSignupModelValidator = MockSignupModelValidator()
      mockSignupWebService = MockSignupWebService()
      mockSignupViewDelegate = MockSignupViewDelegate()
      sut = SignupPresenter(formModelValidator: mockSignupModelValidator,                            webservice: mockSignupWebService,
                            delegate: mockSignupViewDelegate
      )
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
      
      // set it to nil, to release resources.
      signupFormModel = nil
      mockSignupModelValidator =  nil
      mockSignupWebService = nil
      mockSignupViewDelegate = nil
      sut = nil
    }
  
  func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty() {
    // Arrange
    
    // Act
    sut.processUserSignup(formModel: signupFormModel)
    
    // Assert
    XCTAssertTrue(mockSignupModelValidator.isFirstNameValidated, "First name was not validated")
    XCTAssertTrue(mockSignupModelValidator.isLastNameValidated, "Last name was not validated")
    XCTAssertTrue(mockSignupModelValidator.isEmailFormatValidated, "Email format was not validated")
    XCTAssertTrue(mockSignupModelValidator.isPasswordValidated, "Password was not validated")
    XCTAssertTrue(mockSignupModelValidator.isPasswordEqualityValidated, "Did not validate, if passwords match")
  }
  
  func testSignupPresenter_WhenGivenValidFormModel_ShouldCallSignupMethod()  {
    // Arrange
    
    // Act
    sut.processUserSignup(formModel: signupFormModel)
    
    // Assert
    XCTAssertTrue(mockSignupWebService.isSignupMethodCalled, "The signup() method was not called in the SignupWebService class")
  }
  
  func testSignupPresenter_WhenSignupOperationSuccessfull_CallsSuccessOnViewDelegate() {
    // Arrange
    let myExpectation = expectation(description: "Expected the successfulSignup() method to be called")
    mockSignupViewDelegate.expectation = myExpectation
    
    // Act
    sut.processUserSignup(formModel: signupFormModel)
    self.wait(for: [myExpectation], timeout: 5)
    
    // Assert
    XCTAssertEqual(mockSignupViewDelegate.successfulSignupCounter, 1, "The successfulSignup() method was called more than one time")
  }
}
