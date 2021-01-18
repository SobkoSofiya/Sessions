//
//  Hello-4.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Hello_4: View {
    @Binding var Swift22:Int
    @State var btnColor:Bool = true
    @State var btnColor1:Bool = true
    @State var btnColor2:Bool = true
    @State var btnColor3:Bool = true
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
                    .padding(.bottom, 40)
                    
                    VStack(spacing:20){
                        Button(action: {
                            btnColor.toggle()
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(btnColor ? ("wi") : ("be")))
                                    .cornerRadius(39)
                                    .frame(width: 284, height: 77, alignment: .center)
                                VStack{
                                Text("Newbie")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                                    Text("Just getting started")
                                        .font(.custom("ND Astroneer.ttf", size: 18))
                                        .foregroundColor(Color("bu"))
                                }
                            }
                        })
                        Button(action: {
                            btnColor1.toggle()
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(btnColor1 ? ("wi") : ("be")))
                                    .cornerRadius(39)
                                    .frame(width: 284, height: 77, alignment: .center)
                                VStack{
                                Text("Keep on")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                                    Text("1-2 times a week")
                                        .font(.custom("ND Astroneer.ttf", size: 18))
                                        .foregroundColor(Color("bu"))
                                }
                            }
                        })
                   
                        Button(action: {
                            btnColor2.toggle()
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(btnColor2 ? ("wi") : ("be")))
                                    .cornerRadius(39)
                                    .frame(width: 284, height: 77, alignment: .center)
                                VStack{
                                Text("Advanced")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                                    Text("More than 3 times a week")
                                        .font(.custom("ND Astroneer.ttf", size: 18))
                                        .foregroundColor(Color("bu"))
                                    
                                    
                                }
                                }
                        })
                   
                        Button(action: {
                            if btnColor == false || btnColor1 == false || btnColor2 == false{
                                btnColor3.toggle()
                                Swift22 = 6
                            
                            }
                            
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color(btnColor3 ? ("wi") : ("be")))
                                    .cornerRadius(39)
                                    .frame(width: 284, height: 77, alignment: .center)
                                
                                Text("Next")
                                    .font(.custom("ND Astroneer.ttf", size: 24))
                                    .foregroundColor(Color("bu"))
                                    
                        
                            }
                        })
                       .padding(.top,40)
                    }
                }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Hello_4_Previews: PreviewProvider {
//    static var previews: some View {
//        Hello_4()
//    }
//}

