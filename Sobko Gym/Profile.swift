//
//  Profile.swift
//  Sobko Gym
//
//  Created by Sofi on 19.01.2021.
//

import SwiftUI

struct Profile: View {
    @State var toggleTap = ContentView1()
    @ObservedObject var model = ViewModel()
    @State var error:Bool = false
    @Binding var nam:String
    @Binding var Swift22:Int
    @State var nativeAlert = false
    @Binding var Swift23:Int
    @State var Weight = ""
    @State var Height = ""
   
    
//    @Binding var model1: Model
   
   
    var body: some View {
        ZStack{
            VStack(spacing:0){
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("bu"), Color("bi")]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width, height: 130, alignment: .center)
                Spacer()
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                    .foregroundColor(Color("gbu"))
                    .border(Color.black, width: 0.5
                    )
            }
            VStack(spacing:0){
                Spacer()
                
               
//            Text(model.nam)
                HStack(alignment:.bottom,spacing:80){
                    VStack(spacing:5){
                        
                        Text(model.file.wig)
                    Text("Weight")
                }.foregroundColor(.white)
                .font(.custom("ND Astroneer.ttf", size: 14))
                VStack(spacing:5){
//                    Text(modelProfile.)
                    Text(model.file.nam)
                .foregroundColor(.white)
                .font(.custom("ND Astroneer.ttf", size: 24))
                    
            Text("Male")
                .foregroundColor(.white)
                .font(.custom("ND Astroneer.ttf", size: 16))
                }
                VStack(spacing:5){
                    Text(model.file.hig)
                    Text("Height")
                }.foregroundColor(.white)
                .font(.custom("ND Astroneer.ttf", size: 14))
                }.padding(.bottom,5)
            List{
                HStack{
                Text("Training rest")
                    Spacer()
                    Text("30 sec")
                }
                HStack{
                    Text("Notifications")
                        Spacer()
                    toggleTap
                }
                Button(action: {
                    withAnimation{
                       alertView()
                       
                    }
                }, label: {
                    Text("Biometric")
                })
                Button(action: {
                    Swift22 = 1
                    model.SignOut(nam: nam)
                    nam = ""
                }, label: {
                    Text("Start dialog")
                })
               
                Button(action: {
                    Swift22 = 15
                }, label: {
                    Text("Privacy policy")
                })
               
            }.foregroundColor(Color("nobu"))
            .frame(width: UIScreen.main.bounds.width, height: 440, alignment: .center)
            Button(action: {
                model.SignOut(nam: "\(nam)")
                Swift22 = 7
                nam = ""
            }, label: {
                ZStack{
                    
                    Rectangle()
                        .frame(width: 312, height: 50, alignment: .center)
                        .foregroundColor(.clear)
                        .cornerRadius(25)
                        .border(Color("nobu"), width: 1)
                    Text("Sign Out")
                        .foregroundColor(Color("bu"))
                        .font(.custom("ND Astroneer.ttf", size: 24))
                        
                }
            }).padding(.bottom,125)
                Spacer()
                HStack(spacing:69){
                    Button(action: {
                        Swift22 = 9
                    }, label: {
                        VStack{
                            Image("Plan")
                            Text("Plan")
                        }
                    })
                    
                    Button(action: {
                        Swift22 = 10
                    }, label: {
                        VStack{
                            Image("lessons")
                            Text("Lessons")
                        }
                    })
                   
                    Button(action: {
                        
                    }, label: {
                        VStack{
                            Image("reports")
                            Text("Reports")
                        }
                    })
                    
                    Button(action: {
                        Swift22 = 14
                    }, label: {
                        VStack{
                            Image("pro")
                            Text("Profile")
                        }
                    })
                }.foregroundColor(.gray)
                .font(.custom("ND Astroneer.ttf", size: 10))
                .padding(.bottom , 40)
            }

        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            model.GetProfil()
        })
    }
    func alertView() {
        let alert = UIAlertController(title: "Biometric", message: "Please, Input Your Biometric Data", preferredStyle: .alert)
        
        alert.addTextField{(pass) in
            pass.isSecureTextEntry = false
            pass.placeholder = "Weight"
            
        }
        alert.addTextField{(pass1) in
            pass1.isSecureTextEntry = false
            pass1.placeholder = "Height"
            
        }
        let login = UIAlertAction(title: "OK", style: .default){(_) in
            
            Weight = alert.textFields![0].text!
            Height = alert.textFields![1].text!
            model.ProfileCange(weigh: "\(Weight)", heigh: "\(Height)")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                model.GetProfil()
            })
         
//            if password != "" && Height != "" {
//                let weightS = UserDefaults.standard.string(forKey: "weight")
//                let heightS = UserDefaults.standard.string(forKey: "height")
//                model.ProfileCange( weigh: "\(weightS!)", heigh: "\(heightS!)")
//            model.file.hig.removeAll()
//            model.file.wig.removeAll()
//            model.file.hig.append(Height)
//            model.file.wig.append(password)
//            } else{
//               
//            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default){(_) in
            
        }
        
        alert.addAction(cancel)
                        
        alert.addAction(login)
        
       
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
            
        })
     
    }
}
//
//struct Profile_Previews: PreviewProvider {
//    static var previews: some View {
//        Profile()
//    }
//}
