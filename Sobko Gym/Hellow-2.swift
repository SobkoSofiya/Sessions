//
//  Hellow-2.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Hellow_2: View {
    @Binding var Swift22:Int
    @State var btnColor:Bool = true
    @State var btnColor1:Bool = true
    @State var btnColor2:Bool = true
    var body: some View {
        ZStack{
            
       Rectangle()
        .foregroundColor(Color("bu"))
            VStack(spacing: 100){
                VStack{
                Text("Step 1/5")
                    .foregroundColor(.white)
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .padding(30)
                Text("What is your purpose?")
                    .font(.custom("ND Astroneer.ttf", size: 18))
                    .foregroundColor(.white)
                    .padding(.bottom, 70)
                HStack(spacing:110){
                    Button(action: {
                        btnColor.toggle()
                    }, label: {
                        VStack{
                        Image("ltlt")
                            .frame(width: 92, height: 92, alignment: .center)
                            .frame(width: 92, height: 92, alignment: .center)
//                            .cornerRadius(25).border(Color.black, width: 1)
                            .background(Circle())
                            .foregroundColor(Color(btnColor ? ("wi") : ("be")))
                            Text("Female")
                                .font(.custom("ND Astroneer.ttf", size: 24))
                                .foregroundColor(.white)
                        }
                    })
                    
                    Button(action: {
                        btnColor1.toggle()
                    }, label: {
                        VStack{
                        ZStack{
//                            Circle()
//                                .frame(width: 92, height: 92, alignment: .center)
//                                .foregroundColor(Color(btnColor ? ("wi") : ("be")))
//                                .stroke(Color.black)
//
                            
                            
//                            .(Color.black, width: 2)
                        Image("vfk")
                        }
                        
                        .frame(width: 92, height: 92, alignment: .center)
//                        .cornerRadius(25).border(Color.black, width: 1)
                        .background(Circle())
                        .foregroundColor(Color(btnColor1 ? ("wi") : ("be")))
                        
                            Text("Male")
                                .font(.custom("ND Astroneer.ttf", size: 24))
                                .foregroundColor(.white)
                        }
                    })
                    
                }
                }
                Button(action: {
                  
                    btnColor2.toggle()
                    if btnColor == false{
                        Swift22 = 3
                    } else if btnColor1 == false{
                        Swift22 = 4
                    }
//                    Swift22 = 3
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 284, height: 77, alignment: .center)
                            .foregroundColor(Color(btnColor2 ? ("wi") : ("be")))
                            .cornerRadius(39)
                        Text("Next")
                            .font(.custom("ND Astroneer.ttf", size: 24))
                            .foregroundColor(Color("bu"))
                        
                    }
                })
               .padding(.top, 100)
    }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Hellow_2_Previews: PreviewProvider {
//    static var previews: some View {
//        Hellow_2()
//    }
//}
