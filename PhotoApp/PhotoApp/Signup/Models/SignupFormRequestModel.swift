//
//  SignupFormRequestModel.swift
//  PhotoApp
//
//  Created by Elizeu RS on 29/07/22.
//

import Foundation

struct SignupFormRequestModel: Encodable {
  let firstName: String
  let lastName: String
  let email: String
  let password: String
}
