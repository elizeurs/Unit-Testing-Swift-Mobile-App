//
//  SignupWebService.swift
//  PhotoApp
//
//  Created by Elizeu RS on 29/07/22.
//

import Foundation

class SignupWebService {
  
  private var urlString: String
  
  init(urlString: String) {
    self.urlString = urlString
  }
  
  func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupErrors?) -> Void) {
    guard let url = URL(string: urlString) else { return }
    // TODO: Create a unit test to test that a specific error is returned is url is nil.
    return
  }
}
