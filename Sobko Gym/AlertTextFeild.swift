//
//  AlertTextFeild.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct AlertTextFeild: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AlertTextFeild_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


struct Home: View {
    
@State var nativeAlert = false

@State var password = ""
    @State var Height = ""
    var body: some View {
        ZStack{
            VStack(spacing:25){
                
                Button(action: {
                    withAnimation{
                       alertView()
                    }
                }, label: {
                    Text("Native")
                })
                Text(password)
                    .fontWeight(.bold)
            }
        }
    }
    func alertView() {
        let alert = UIAlertController(title: "Biometric", message: "Please, Input Your Biometric Data", preferredStyle: .alert)
        
        alert.addTextField{(pass) in
            pass.isSecureTextEntry = true
            pass.placeholder = "Password"
            
        }
        alert.addTextField{(pass1) in
            pass1.isSecureTextEntry = true
            pass1.placeholder = "Height"
            
        }
        let login = UIAlertAction(title: "OK", style: .default){(_) in
            
            password = alert.textFields![0].text!
            Height = alert.textFields![1].text!
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default){(_) in
            
        }
        
        alert.addAction(cancel)
                        
        alert.addAction(login)
        
        
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
            
        })
    }
}
