//
//  Hello-1.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Hello_1: View {
    @Binding var Swift22:Int
    @State var btnColor:Bool = true
    @State var btnColor1:Bool = true
    @State var btnColor2:Bool = true
    var body: some View {
        ZStack{
            
       Rectangle()
        .foregroundColor(Color("bu"))
            VStack{
                Text("Step 1/5")
                    .foregroundColor(.white)
                    .font(.custom("ND Astroneer.ttf", size: 50))
                    .padding(30)
                Text("What is your purpose?")
                    .font(.custom("ND Astroneer.ttf", size: 18))
                    .foregroundColor(.white)
                    .padding(.bottom, 70)
                VStack(spacing:25){
                    Button(action: {
                        btnColor.toggle()
                        Swift22 = 2
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(btnColor ? ("wi") : ("be")))
                                .frame(width: 284, height: 77, alignment: .center)
                                .cornerRadius(39)
                            HStack(spacing: 20){
                                Image("we")
                                    .frame(width: 35, height: 35, alignment: .center)
                            Text("Weight loss")
                                .foregroundColor(Color("bu"))
                                .font(.custom("ND Astroneer.ttf", size: 24))
                            }
                        }
                    })
               
                    Button(action: {
                        btnColor.toggle()
                        Swift22 = 2
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(btnColor1 ? ("wi") : ("be")))
                                .frame(width: 284, height: 77, alignment: .center)
                                .cornerRadius(39)
                            HStack(spacing: 20){
                                Image("ke")
                                    .frame(width: 35, height: 35, alignment: .center)
                            Text("Keeping fit")
                                .foregroundColor(Color("bu"))
                                .font(.custom("ND Astroneer.ttf", size: 24))
                            }
                        }
                    })
                
                    Button(action: {
                        btnColor.toggle()
                        Swift22 = 2
                    }, label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(btnColor2 ? ("wi") : ("be")))
                                .frame(width: 284, height: 77, alignment: .center)
                                .cornerRadius(39)
                            HStack(spacing: 20){
                                Image("bu")
                                    .frame(width: 35, height: 35, alignment: .center)
                            Text("Build muscle")
                                .foregroundColor(Color("bu"))
                                .font(.custom("ND Astroneer.ttf", size: 24))
                            }
                        }
                    })

               
                }
             

            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

//struct Hello_1_Previews: PreviewProvider {
//    static var previews: some View {
//        Hello_1()
//    }
//}
