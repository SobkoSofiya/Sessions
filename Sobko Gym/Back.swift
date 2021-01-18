//
//  Back.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Back: View {
    @State var viewModel = ViewModel()
    @Binding var Swift22:Int
    @Binding var nam:String
    var body: some View {
        Button(action: {
            viewModel.SignOut(nam: "\(nam)")
            if nam != ""{
            Swift22 = 7
                nam = ""
            } else {
                Swift22 = 7
            }
        }, label: {
            Text("Back")
                .font(.custom("ND Astroneer.ttf", size: 50))
                .foregroundColor(Color("bu"))
        })
    }
}

//struct Back_Previews: PreviewProvider {
//    static var previews: some View {
//        Back()
//    }
//}
