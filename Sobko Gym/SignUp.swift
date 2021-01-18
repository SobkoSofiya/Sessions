//
//  SignUp.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct SignUp: View {
    @State var viewModel = ViewModel()
    @Binding var Swift22:Int
    @State var nam:String = ""
    @State var pass:String = ""
    @State var rePass:String = ""
    @State var email:String = ""
    @State var mess: String = ""
    @Binding var heignt:String
    @Binding var weight:String
    @State var alertError = false
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("bu"))
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Image("ic")
                    .resizable()
                    .frame(width: 179, height: 179, alignment: .center)
                    .padding(.top, 65)
                Spacer()
            }
            VStack{
                Spacer()
                Text("Home\n Gym")
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .foregroundColor(.white)
                VStack(spacing: 15){
                ZStack{
                Rectangle()
                    .frame(width: 312, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    HStack(spacing:0){
                        Image("i")
                            .resizable()
                            .frame(width: 15.8, height: 14.6, alignment: .center)
                            .padding(15)
                            .padding(.leading, 10)
                        
                            
                        Rectangle()
                            .frame(width: 1, height: 50, alignment: .center)
                            .foregroundColor(.gray)
                            .opacity(10)
                            
                        TextField("Ivanov", text: $nam)
                            .font(.custom("ND Astroneer.ttf", size: 24))
                            .foregroundColor(Color("gray1"))
                            .frame(width: 260, height: 50, alignment: .center)
                            .padding(.leading,5)
                    }
                }
                ZStack{
                Rectangle()
                    .frame(width: 312, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    HStack(spacing:0){
                        Image("gbcm")
                            .resizable()
                            .frame(width: 20, height: 14, alignment: .center)
                            .padding(15)
                            .padding(.leading, 7)
                        
                            
                        Rectangle()
                            .frame(width: 1, height: 50, alignment: .center)
                            .foregroundColor(.gray)
                            .opacity(10)
                            
                        TextField("Ivanov@mail.com", text: $email)
                            .font(.custom("ND Astroneer.ttf", size: 24))
                            .foregroundColor(Color("gray1"))
                            .frame(width: 260, height: 50, alignment: .center)
                            .padding(.leading,5)
                    }
                }
                ZStack{
                Rectangle()
                    .frame(width: 312, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    HStack(spacing:0){
                        Image("p")
                            .resizable()
                            .frame(width: 15.2, height: 17.95, alignment: .center)
                            .padding(15)
                            .padding(.leading, 5)
                            .padding(.leading, 8)
                            
                        Rectangle()
                            .frame(width: 1, height: 50, alignment: .center)
                            .foregroundColor(.gray)
                            .opacity(10)
                            
                        TextField("●●●●●●", text: $pass)
                            .font(.custom("ND Astroneer.ttf", size: 15))
                            .foregroundColor(Color("gray2"))
                            .frame(width: 260, height: 50, alignment: .center)
                            .padding(.leading,5)
                    }
                }
                ZStack{
                Rectangle()
                    .frame(width: 312, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    HStack(spacing:0){
                        Image("p")
                            .resizable()
                            .frame(width: 15.2, height: 17.95, alignment: .center)
                            .padding(15)
                            .padding(.leading, 5)
                            .padding(.leading, 8)
                            
                        Rectangle()
                            .frame(width: 1, height: 50, alignment: .center)
                            .foregroundColor(.gray)
                            .opacity(10)
                            
                        TextField("●●●●●●", text: $rePass)
                            .font(.custom("ND Astroneer.ttf", size: 15))
                            .foregroundColor(Color("gray2"))
                            .frame(width: 260, height: 50, alignment: .center)
                            .padding(.leading,5)
                    }
                }
                }

                Button(action: {
                    
                    if nam != "", email != "", pass != "", rePass != ""{
                        if email.contains("@"){
                            if pass == rePass {
                                viewModel.SignUp(nam: "\(nam)", email: "\(email)", pass: "\(pass)", wig: "\(weight)", hi: "\(heignt)")
                                Swift22 = 7
                            } else{
                                mess = "Passwords don't match"
                                alertError.toggle()
                            }
                            
                        } else{
                            mess = "Incorrect email"
                            alertError.toggle()
                        }
                        
                    } else{
                        mess = "Enter all fields"
                        alertError.toggle()
                    }
                    
                }, label: {
                    Text("Sign Up")
                        .font(.custom("ND Astroneer.ttf", size: 24))
                        .frame(width: 312, height: 50, alignment: .center).cornerRadius(100)
                        .background(Color.white)
                        .foregroundColor(Color("bu"))
                        .padding(.top, 50)
                }).alert(isPresented: $alertError, content: {
                    Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("OK")))
                })
                Button(action: {
                    Swift22 = 7
                }, label: {
                    Text("Back")
                        .font(.custom("ND Astroneer.ttf", size: 16))
                        .foregroundColor(.white)
                        .underline()
                        .padding()
                        .padding(.top, 60)
                })
               
                    
                
                
                    
            }
            }
    }
}

//struct SignUp_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUp()
//    }
//}
