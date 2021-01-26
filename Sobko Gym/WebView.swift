//
//  WebView.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct WebView: View {
    @Binding var Swift22:Int
    var body: some View {
        VStack{
            Button(action: {
                Swift22 = 14
            }, label: {
                Text("Back")
            })
        Web(url: "http://dailyworkoutapps.com/privacy-policy.html")
        }
    }
}

//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView()
//    }
//}
