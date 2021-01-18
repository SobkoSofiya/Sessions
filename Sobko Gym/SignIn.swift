//
//  SignIn.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct SignIn: View {
    @State var viewModel = ViewModel()
    @Binding var Swift22:Int
    @Binding var nam:String
    @State var pass:String = ""
    @State var error = false
    @State var mess:String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("bu"))
                .edgesIgnoringSafeArea(.all)
            VStack(){
                Image("sg")
                    .resizable()
                    .frame(width: 179, height: 179, alignment: .center)
                    .padding(.top, 150)
                Spacer()
            }
            VStack{
                Spacer()
                Text("Home\n Gym")
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .foregroundColor(.white)
                VStack(spacing:15){
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
                            .padding(.leading, 5)
                            
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
                        Image("p")
                            .resizable()
                            .frame(width: 15.2, height: 17.95, alignment: .center)
                            .padding(15)
                            .padding(.leading, 5)
                            
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
                }
                ZStack{
                  
                    Button(action: {
                        viewModel.SignIn(nam: "\(nam)", pass: "\(pass)")
                        if viewModel.perehod == 1{
                           Swift22 = 9
                        } else if viewModel.perehod == 2{
                            mess = "User is active"
                            error.toggle()
                        } else if viewModel.perehod == 3{
                            mess = "Error username or password"
                            error.toggle()
                        }
                        
                    }, label: {
                        ZStack{
                        Rectangle()
                            .frame(width: 312, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        Text("Sign In")
                            .font(.custom("ND Astroneer.ttf", size: 24))
//                            .frame(width: 312, height: 50, alignment: .center).cornerRadius(100)
//                            .background(Color.white)
                            .foregroundColor(Color("bu"))
                        }
                            
                    }).padding(.top, 35).alert(isPresented: $error, content: {
                        Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok"), action: {
                            if  mess == "User is active"{
                                Swift22 = 9
                            } else if mess == "Error username or password"{
                                Swift22 = 7
                            }
                            
                        }))
                    })
               
                }
                Button(action: {
                    Swift22 = 8
                }, label: {
                    Text("Sign Up")
                        .underline()
                        .font(.custom("ND Astroneer.ttf", size: 24))
                        .frame(width: 312, height: 50, alignment: .center).cornerRadius(100)
                        .foregroundColor(.white)
                })
                   
                       
                        
              
                Button(action: {
                    Swift22 = 9
                }, label: {
                    Text("Skip")
                        .font(.custom("ND Astroneer.ttf", size: 16))
                        .foregroundColor(.white)
                        .underline()
                        .padding(.top, 85)
                        .padding(.bottom, 10)
                
                })
                    
               
                
                
                    
            }
            }
    }
}

//struct SignIn_Previews: PreviewProvider {
//    static var previews: some View {
//        SignIn()
//    }
//}
