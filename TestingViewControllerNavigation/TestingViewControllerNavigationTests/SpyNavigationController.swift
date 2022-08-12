//
//  SpyNavigationController.swift
//  TestingViewControllerNavigationTests
//
//  Created by Elizeu RS on 12/08/22.
//

import UIKit

class SpyNavigationController: UINavigationController {
  
  var pushedViewController: UIViewController!

  override func pushViewController(_ viewController: UIViewController, animated: Bool) {
    super.pushViewController(viewController, animated: animated)
    
    pushedViewController = viewController
  }
}
