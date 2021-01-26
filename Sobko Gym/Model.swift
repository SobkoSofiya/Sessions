//
//  Model.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import Foundation
import  SwiftUI

struct Model: Hashable {
    var nam, pass, wig, hig, email:String
}


struct ModelCategory:Hashable {
    let url, category:String
}
