//
//  SignupWebService.swift
//  PhotoApp
//
//  Created by Elizeu RS on 29/07/22.
//

import Foundation

class SignupWebService {
  
  private var urlSession: URLSession
  private var urlString: String
  
  init(urlString: String, urlSession: URLSession = .shared) {
    self.urlString = urlString
    self.urlSession = urlSession
  }
  
  func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupErrors?) -> Void) {
    guard let url = URL(string: urlString) else { return }
    // TODO: Create a unit test to test that a specific error is returned is url is nil.
    return
  }
  var request = URLRequest(url: url)
  request.httpMethod = "POST"
  request.setValue("application/json", forHTTPHeaderField: "Content-Type")
  request.setValue("application/json", forHTTPHeaderField: "Accept")
  
  request.httpBody = try? JSONEncoder().encode(formModel)
  
  let dataTask = urlSession.dataTask(with: request) { (data, response, error) in
    //
  }
  
  dataTask.resume()
}
}
