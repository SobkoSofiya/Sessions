//
//  ModelLessons.swift
//  Sobko Gym
//
//  Created by Sofi on 19.01.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire
import KeychainSwift
struct ModelLesson: Hashable {
    let url1, category:String
    let id:Int
}


class urlLessons: ObservableObject {
    @Published var lesson:[ModelLesson] = []
    @Published var linkVideo:[String] = []
    let keychain = KeychainSwift()
    func YoutubList()  {
        
        let url = "http://gym.areas.su/lessons"
        AF.request(url, method: .get).validate().responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                for i in 0..<json.count{
                    self.linkVideo.append(json[i]["url"].stringValue)
                }
               
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    func ProfileCange(token:Int, weigh:String, heigh:String) {
        let keychain = KeychainSwift()
        let tofen = keychain.get("token")
        let url = "http://gym.areas.su/editeprofile?token=\(tofen)&weight=\(weigh)&height=\(heigh)"
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
    
    
    func GetProfil(token:Int) {
        let keychain = KeychainSwift()
        let tofen = keychain.get("token")
        let url = "http://gym.areas.su/profile?token=\(tofen)"
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

