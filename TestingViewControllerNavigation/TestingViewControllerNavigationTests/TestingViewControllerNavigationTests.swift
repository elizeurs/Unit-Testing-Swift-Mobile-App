//
//  TestingViewControllerNavigationTests.swift
//  TestingViewControllerNavigationTests
//
//  Created by Elizeu RS on 11/08/22.
//

import XCTest
@testable import TestingViewControllerNavigation

class TestingViewControllerNavigationTests: XCTestCase {
  
  var sut: ViewController!

    override func setUpWithError() throws {
      // step 1. Create an instance of UIStorybooard
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      // step 2. Instantiate UIViewController with Storyboard ID
      sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      
      // step 3. Make the viewDidLoad() execute.
      sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
      sut = nil
    }
}
