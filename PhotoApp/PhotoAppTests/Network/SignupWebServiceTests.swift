//
//  SignupWebServiceTests.swift
//  PhotoAppTests
//
//  Created by Elizeu RS on 29/07/22.
//

import XCTest
@testable import PhotoApp

class SignupWebServiceTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testSignupWebService_WhenGivenSuccessfullResponse_ReturnsSuccess() {
    // Arrange
    let sut = SignupWebService(urlString: "http://appsdeveloperblog.com:8080/signup-mock-service/users")
    
    let signFormRequestModel = SignupFormRequestModel(firstName: "Sergey", lastName: "Kargopolov", email: "test@test.com", password: "12345678")
    
    let expectation = self.expectation(description: "Signup Web Service Response Expectation")
    
    // Act
    sut.signup(withForm: signFormRequestModel) { (signupResponseModel,  error) in
      
      // Assert
      //"{\"status\":\"ok\"}"
      XCTAssertEqual(signupResponseModel?.status, "ok")
      expectation.fulfill()
    }
    
    self.wait(for: [expectation], timeout: 5)
  }
}
