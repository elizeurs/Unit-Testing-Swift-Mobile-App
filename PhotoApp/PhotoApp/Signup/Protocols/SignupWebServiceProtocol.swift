//
//  SignupWebServiceProtocol.swift
//  PhotoApp
//
//  Created by Elizeu RS on 04/08/22.
//

import Foundation

protocol SignupWebServiceProtocol {
  func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void)
}
