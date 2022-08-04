//
//  SignupViewDelegateProtocol.swift
//  PhotoApp
//
//  Created by Elizeu RS on 04/08/22.
//

import Foundation

protocol signupViewDelegateProtocol: AnyObject {
  func successfulSignup()
  func errorHandler(error: SignupError)
}
