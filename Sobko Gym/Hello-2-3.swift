//
//  Hello-2-3.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Hello_2_3: View {
    @Binding var Swift22:Int
    @State var btnColor:Bool = true
    @State var btnColor1:Bool = true
    @State var btnColor2:Bool = true
    @State var btnColor3:Bool = true
    @Binding var Swift23:Int
    var body: some View {
        ZStack{
            
       Rectangle()
        .foregroundColor(Color("bu"))
            Image("wo").padding(.top,350).padding(.leading,380).padding(.bottom,35)
                .frame(width: 239, height: 436
                       , alignment: .center)
           
                VStack{
                Text("Step 3/5")
                    .foregroundColor(.white)
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .padding(30)
                Text("What do you want to work on?")
                    .font(.custom("ND Astroneer.ttf", size: 18))
                    .foregroundColor(.white)
                    .padding(.bottom, 70)
                  
                        
                            
                        VStack(spacing:10){
                            HStack(spacing:0){
                                Button(action: {
                                    if Swift23 != 4{
                                    btnColor.toggle()
                                    Swift22 = 5
                                    } else{
                                        btnColor.toggle()
                                        Swift22 = 5
                                    }
                                }, label: {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 172, height: 46, alignment: .center)
                                            .foregroundColor(Color(btnColor3 ? ("wi") : ("be")))
                                            .cornerRadius(39)
                                        Text("Hands")
                                            .font(.custom("ND Astroneer.ttf", size: 14))
                                            .foregroundColor(Color("bu"))
                                    }
                                })
                        
                                Rectangle()
                                    .frame(width: 150, height: 1, alignment: .center)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 15, height: 15, alignment: .center)
                                    .foregroundColor(.white)
                                    .cornerRadius(30)
                            }.padding(.trailing,50)
                            HStack(spacing:0){
                                Button(action: {
                                    if Swift23 != 4{
                                    btnColor1.toggle()
                                    Swift22 = 5
                                    } else{
                                        btnColor1.toggle()
                                        Swift22 = 5
                                    }
                                }, label: {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 172, height: 46, alignment: .center)
                                            .foregroundColor(Color(btnColor3 ? ("wi") : ("be")))
                                            .cornerRadius(39)
                                        Text("Spine")
                                            .font(.custom("ND Astroneer.ttf", size: 14))
                                            .foregroundColor(Color("bu"))
                                        
                                    }
                                })
                       
                                Rectangle()
                                    .frame(width: 170, height: 1, alignment: .center)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 15, height: 15, alignment: .center)
                                    .foregroundColor(.white)
                                    .cornerRadius(30)
                            }.padding(.trailing,30)
                            HStack(spacing:0){
                                Button(action: {
                                    if Swift23 != 4{
                                    btnColor2.toggle()
                                    Swift22 = 5
                                    } else{
                                        btnColor2.toggle()
                                        Swift22 = 5
                                    }
                                }, label: {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 172, height: 46, alignment: .center)
                                            .foregroundColor(Color(btnColor3 ? ("wi") : ("be")))
                                            .cornerRadius(39)
                                        Text("Torso")
                                            .font(.custom("ND Astroneer.ttf", size: 14))
                                            .foregroundColor(Color("bu"))
                                    }
                                })
                        
                                VStack(spacing:0){
                                    Rectangle()
                                        .frame(width: 15, height: 15, alignment: .center)
                                        .foregroundColor(.white)
                                        .cornerRadius(30)
                                    Rectangle()
                                        .frame(width: 1, height: 15, alignment: .center)
                                        .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 200, height: 1, alignment: .center)
                                    .foregroundColor(.white)
                                    
                                   
                                }.padding(.bottom,30)
                            }.padding(.trailing,15)
                            HStack(spacing:0){
                                Button(action: {
                                    if Swift23 != 4{
                                    btnColor2.toggle()
                                    Swift22 = 5
                                    } else{
                                        btnColor2.toggle()
                                        Swift22 = 5
                                    }
                                }, label: {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 172, height: 46, alignment: .center)
                                            .foregroundColor(Color(btnColor3 ? ("wi") : ("be")))
                                            .cornerRadius(39)
                                        Text("Legs")
                                            .font(.custom("ND Astroneer.ttf", size: 14))
                                            .foregroundColor(Color("bu"))
                                    }
                                })
                        
                                Rectangle()
                                    .frame(width: 150, height: 1, alignment: .center)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .frame(width: 15, height: 15, alignment: .center)
                                    .foregroundColor(.white)
                                    .cornerRadius(30)
                            }.padding(.trailing,50)
                    
                       
                    }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Hello_2_3_Previews: PreviewProvider {
//    static var previews: some View {
//        Hello_2_3()
//    }
//}
