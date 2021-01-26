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
import KeychainSwift

class ViewModel:ObservableObject {
    @Published var lesson:[ModelLesson] = []
    @Published var linkVideo:[ModelLesson] = []
    @Published var linkVideo1:[ModelLesson] = []
    @Published var linkVideo2:[ModelLesson] = []
    @Published var linkVideo3:[ModelLesson] = []
    @Published var file = Model(nam: "", pass: "", wig: "", hig: "", email: "")
    let keychain = KeychainSwift()
    @Published var perehod = 0
    var token:String = ""
    @Published var gym: [Model] = []
    func SignUp(nam:String, email:String, pass:String, wig:String, hi:String) {
        let url = "http://gym.areas.su/signup?username=\(nam)&email=\(email)&password=\(pass)&weight=\(wig)&height=\(hi)"
        let weightS = UserDefaults.standard.string(forKey: "weight")
        let heightS = UserDefaults.standard.string(forKey: "height")
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                self.gym.append(Model(nam: "\(nam)", pass: "\(pass)", wig: "\(weightS!)", hig: "\(heightS!)", email: "\(email)"))
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
                if json["notice"]["answer"].stringValue == "Error username or password"{
                    perehod = 3
                }  else if json["notice"]["answer"].stringValue == "User is active"{
                        perehod = 2
                
                } else   if json["notice"]["token"].stringValue != "" {
                    perehod = 1
                    
                    
                    
                    
                    self.token = json["notice"]["token"].stringValue
                    keychain.set(self.token, forKey: "token")
                    keychain.get("token")
                    
                    
                    
                    
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
    
    
    
    
    
    func YoutubList()  {
        
        let url = "http://gym.areas.su/lessons"
        AF.request(url, method: .get).validate().responseJSON { [self] (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                for i in 0..<json.count{
                    self.linkVideo.append(ModelLesson(url1: json[i]["url"].stringValue, category: json[i]["category"].stringValue , id: json[i]["id"].intValue))
                }
//                let torso = self.linkVideo[0].url1
               
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    func ProfileCange( weigh:String, heigh:String) {
        let keychain = KeychainSwift()
        let tofen = keychain.get("token")
        let url = "http://gym.areas.su/editeprofile?token=\(tofen!)&weight=\(weigh)&height=\(heigh)"
        AF.request(url, method: .put).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    func GetProfil() {
       
        let tofen = keychain.get("token")
    let url = "http://gym.areas.su/profile?token=\(tofen!)"
        AF.request(url, method: .post).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                self.file = Model(nam: json[0]["username"].stringValue, pass: json[0]["password"].stringValue, wig: json[0]["weight"].stringValue, hig: json[0]["height"].stringValue, email: json[0]["email"].stringValue)
                print(self.file)
//                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }


}
