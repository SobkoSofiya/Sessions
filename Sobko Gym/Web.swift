//
//  Web.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import Foundation
import SwiftUI
import WebKit

struct Web:UIViewRepresentable {
    let url:String
    func makeUIView(context: Context) -> WKWebView {
       
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
    let controller =  WKWebView()
        let req = URLRequest(url: url)
        controller.load(req)
        return controller
        
    }
    
   
    func updateUIView(_ uiView: Web.UIViewType, context: UIViewRepresentableContext<Web>) {
    }
}


