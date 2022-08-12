//
//  ViewController.swift
//  TestingViewControllerNavigation
//
//  Created by Elizeu RS on 11/08/22.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var nextViewButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func nextViewButtonTapped(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    
    self.navigationController?.pushViewController(secondViewController, animated: true)
    
//    present(secondViewController, animated: true)
  }
  
}

