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
  var navigationController: UINavigationController!

    override func setUpWithError() throws {
      // step 1. Create an instance of UIStorybooard
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
      // step 2. Instantiate UIViewController with Storyboard ID
      sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      
      // step 3. Make the viewDidLoad() execute.
      sut.loadViewIfNeeded()
      navigationController = UINavigationController(rootViewController: sut)
    }

    override func tearDownWithError() throws {
      sut = nil
      navigationController = nil
    }
  
  func testNextViewButton_WhenTapped_SecondViewControllerIsPushed() {
    
    let myPredicate = NSPredicate { input, _ in
      return (input as? UINavigationController)?.topViewController is SecondViewController
    }
    
    expectation(for: myPredicate, evaluatedWith: navigationController)
    
    sut.nextViewButton.sendActions(for: .touchUpInside)
    
    waitForExpectations(timeout: 1.5)
  }
}
