//
//  ViewModel.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire

class ViewModel:ObservableObject {
    @Published var perehod = 0
    
    @Published var gym: [Model] = []
    func SignUp(nam:String, email:String, pass:String, wig:String, hi:String) {
        let url = ""
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                self.gym.append(Model(nam: "\(nam)", pass: "\(pass)", wig: "\(wig)", hig: "\(hi)"))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func SignIn(nam:String, pass:String) {
        
        let url = "http://gym.areas.su/signin?username=\(nam)&password=\(pass)"
        
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if json["notice"]["token"].stringValue != "" {
                    perehod = 1
                    
                } else if json["notice"]["answer"].stringValue == "User is active"{
                        perehod = 2
                
                } else if json["notice"]["answer"].stringValue == "Error username or password"{
                    perehod = 3
                }
                print("JSON: \(json)")
               
            case .failure(let error):
                print(error)
            }
        }
    }

    func SignOut(nam:String) {
        
        let url = "http://gym.areas.su/signout?username=\(nam)"
        
        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
