//
//  SitUp1.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct SitUp1: View {
    @State var btnColor1 = true
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
            VStack{
            Text("Sit-up")
                .font(.custom("ND Astroneer.ttf", size: 24))
                .foregroundColor(.white)
                .padding(50)
                .padding(.top,10)
                
            VStack(spacing:15){
                ForEach(0..<10){ st in
            HStack(spacing:15){
                ForEach(0..<6){ strok in
                    ZStack{
                        Button(action: {
                            btnColor1.toggle()
                        }, label: {
                           
                            Circle()
                                
                                .strokeBorder(Color("nobu"), lineWidth: 1)
                                .frame(width: 42, height: 42, alignment: .center)
                                .background(Circle())
                                .foregroundColor(Color(btnColor1 ? ("wi") : ("bu")))
                            
                            
                        })
                     
                        
                        
                    }
                }
                }
                }
            }
                ZStack{
                ZStack(alignment:.leading){
                    Rectangle()
                        .strokeBorder(Color("nobu"), lineWidth: 1)
                        .frame(width: 326, height: 45, alignment: .center)
                        .cornerRadius(23)
                        Rectangle()
                            .foregroundColor(Color("nobu"))
                            .frame(width: 73, height: 45, alignment: .center)
                            .cornerRadius(23)
                }
                    Text("10%")
                        .font(.custom("ND Astroneer.ttf", size: 20))
                        .foregroundColor(Color("nobu"))
                }.padding()
            VStack{
               
                
                HStack(spacing:69){
                    VStack{
                        Image("Plan")
                        Text("Plan")
                    }
                    VStack{
                        Image("lessons")
                        Text("Lessons")
                    }
                    VStack{
                        Image("reports")
                        Text("Reports")
                    }
                    VStack{
                        Image("pro")
                        Text("Profile")
                    }
                }.foregroundColor(.gray)
                .font(.custom("ND Astroneer.ttf", size: 10))
                .padding(.bottom , 40)
                .padding(.top)
            }
        }
    }.edgesIgnoringSafeArea(.all)
    }
}

struct SitUp1_Previews: PreviewProvider {
    static var previews: some View {
        SitUp1()
    }
}
