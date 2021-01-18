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
    @State var heignt:String = ""
    @State var weight:String = ""
    @State var viewModel = ViewModel()
    var body: some View {
        ZStack{
            
       Rectangle()
        .foregroundColor(Color("bu"))
            
           
                VStack{
                Text("Step 4/5")
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
                            TextField("Height", text: $heignt)
                                .foregroundColor(.black)
                                .frame(width: 250, height: 50, alignment: .center)
                                .font(.custom("ND Astroneer.ttf", size: 24))
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
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(btnColor ? ("wi") : ("be")))
                                .cornerRadius(39)
                                .frame(width: 284, height: 77, alignment: .center)
                            Button(action: {
                                btnColor.toggle()
                                viewModel.SignIn(nam: "", email: "", pass: "", wig: weight, hi: heignt)
                                Swift22 = 7
                            }, label: {
                                Text("Next")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                            })
                           
                                
                    
                        }.padding(.top,200)
                    }
                }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Hello_5_Previews: PreviewProvider {
//    static var previews: some View {
//        Hello_5()
//    }
//}
