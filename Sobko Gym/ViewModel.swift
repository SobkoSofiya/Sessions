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
    
    @State var gym: [Model] = []
    func SignIn(nam:String, email:String, pass:String, wig:String, hi:String) {
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
}
