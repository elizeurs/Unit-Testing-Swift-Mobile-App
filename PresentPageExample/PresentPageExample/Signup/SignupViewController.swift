//
//  SignupViewController.swift
//  PresentPageExample
//
//  Created by Elizeu RS on 15/08/22.
//

import UIKit

class SignupViewController: UIViewController {
  
  @IBOutlet weak var cancelBttn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  @IBAction func cancelBttnTapped(_ sender: Any) {
    self.dismiss(animated: false, completion: nil)
        print("cancel")
  }
}
