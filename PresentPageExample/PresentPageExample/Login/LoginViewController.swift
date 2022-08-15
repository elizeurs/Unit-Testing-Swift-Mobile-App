//
//  LoginViewController.swift
//  PresentPageExample
//
//  Created by Elizeu RS on 15/08/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  @IBAction func createAccountButtonTapped(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let signupViewController = storyboard.instantiateViewController(withIdentifier: "SignupViewController")
    signupViewController.view.accessibilityIdentifier = "SignupViewController"
    self.present(signupViewController, animated: true)
  }
}
