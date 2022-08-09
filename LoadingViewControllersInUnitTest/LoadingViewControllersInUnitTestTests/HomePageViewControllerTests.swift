//
//  HomePageViewControllerTests.swift
//  LoadingViewControllersInUnitTestTests
//
//  Created by Elizeu RS on 09/08/22.
//

import XCTest
@testable import LoadingViewControllersInUnitTest

class HomePageViewControllerTests: XCTestCase {
  
  var sut: HomePageViewController!
  
  override func setUpWithError() throws {
    sut = HomePageViewController()
    sut.loadViewIfNeeded()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
}
