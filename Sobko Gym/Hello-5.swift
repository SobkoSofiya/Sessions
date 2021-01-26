//
//  Hello-5.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Hello_5: View {
    @Binding var Swift22:Int
    @State var btnColor:Bool = true
    @Binding var height:String
    @Binding var weight:String
    @State var viewModel = ViewModel()
    @State var error = false
    @Binding var Swift23:Int
    var body: some View {
        ZStack{
            
       Rectangle()
        .foregroundColor(Color("bu"))
            
           
                VStack{
                Text("Step 5/5")
                    .foregroundColor(.white)
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .padding(30)
                Text("How often do you exercise?")
                    .font(.custom("ND Astroneer.ttf", size: 18))
                    .foregroundColor(.white)
                    .padding(.bottom, 70)
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 312, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            TextField("Height", text: $height)
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50, alignment: .center)
                                .font(.custom("ND Astroneer.ttf", size: 24))
                                .keyboardType(.numberPad)
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 312, height: 50, alignment: .center)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                            TextField("Weight", text: $weight)
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50, alignment: .center)
                                .font(.custom("ND Astroneer.ttf", size: 24))
                                .keyboardType(.numberPad)
                        }
                        
                            
                            Button(action: {
                                if Swift23 != 6{
//                                                            let scene = UIApplication.shared.connectedScenes.first as! UIWindowScene
//                                                            let windowSceneDelegate = scene.delegate as? SceneDelegate
//                                                            let window = UIWindow(windowScene: scene)
//                                                            window.rootViewController = UIHostingController(rootView: SignIn(Swift22: $Swift22))
//                                                            windowSceneDelegate?.window = window
//                                                            window.makeKeyAndVisible()

                                btnColor.toggle()
//                                viewModel.SignUp(nam: "", email: "", pass: "", wig: weight, hi: heignt)
                                if weight != ""{
                                    UserDefaults.standard.set(weight, forKey: "weight")
                                    UserDefaults.standard.set(height, forKey: "height")
                                    UserDefaults.standard.set(true, forKey: "Bol")
                                    Swift22 = 7
                                } else{
                                    
                                }
                                } else{
                                    btnColor.toggle()
    //                                viewModel.SignUp(nam: "", email: "", pass: "", wig: weight, hi: heignt)
                                    if weight != ""{
                                        UserDefaults.standard.set(weight, forKey: "weight")
                                        UserDefaults.standard.set(height, forKey: "height")
                                        UserDefaults.standard.set(true, forKey: "Bol")
                                        Swift22 = 0
                                    } else{
                                        
                                    }
                                }

                                
                            }, label: {
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color(btnColor ? ("wi") : ("be")))
                                        .cornerRadius(39)
                                        .frame(width: 284, height: 77, alignment: .center)
                                Text("Next")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                                    
                                }
                            }).padding(.top,200).alert(isPresented: $error, content: {
                                Alert(title: Text("Error"), message: Text("Enter all feils"), dismissButton: .default(Text("Ok")))
                            })
                           
                                
                    
                        
                    }
                }
        }.onTapGesture(perform: {
            UIApplication.shared.windows.forEach { $0.endEditing(true )}
        })
    }
}

//struct Hello_5_Previews: PreviewProvider {
//    static var previews: some View {
//        Hello_5()
//    }
//}
