//
//  Main.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI

struct Main: View {
    @Binding var Swift22:Int
    @State var translation: CGSize = CGSize.zero
    @State var hig = UIScreen.main.bounds.height-200
    @State var y = -UIScreen.main.bounds.height+200
    var body: some View {
        ZStack{
            VStack(spacing:0){
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("bu"), Color("bi")]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width, height: 212, alignment: .center)
                Rectangle()
                    .foregroundColor(.white)
               
            }
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 345, height: 630, alignment: .center)
                    .cornerRadius(49)
                    
            }.offset(y: translation.height)
            .animation(.linear)
            .gesture(DragGesture()
                        .onChanged({ (value) in
                            print(value.translation.height)
                            translation = value.translation
            })
                        .onEnded({ (value) in
                            translation = CGSize.zero
                        })
            )
            
            
            VStack{
                Spacer()
            Text("Home Gym")
                .padding(.bottom,60)
                .foregroundColor(.white)
                .font(.custom("ND Astroneer.ttf", size: 24))
                VStack{
                HStack(spacing:80){
                    VStack{
                    Text("0")
                    Text("Training")
                    }
                    VStack{
                    Text("0")
                    Text("Kcal")
                    }
                    VStack{
                    Text("0")
                    Text("Minutes")
                    }
                }.foregroundColor(Color("bu"))
                .font(.custom("ND Astroneer.ttf", size: 15))
                }.padding(.bottom)
                
                ZStack{
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: 517, alignment: .center)
                        .foregroundColor(.white)
                VStack(  spacing:18){
                  
                ZStack(alignment:.leading){
                    Image("hand")
                        .resizable()
                        .frame(width: 380, height: 165, alignment: .center)
                    Text("Hands").padding(20).padding(.top,105)
                }
                ZStack(alignment:.leading){
                    Image("sp")
                        .resizable()
                        .frame(width: 380, height: 165, alignment: .center)
                    Text("Spine").padding(20).padding(.top,105)
                }
                ZStack(alignment:.leading){
                    Image("torso")
                        .resizable()
                        .frame(width: 380, height: 165, alignment: .center)
                    Text("Torso").padding(20).padding(.top,105)
                }
                        ZStack(alignment:.leading){
                            Image("hand")
                                .resizable()
                                .frame(width: 380, height: 165, alignment: .center)
                            Text("Hands").padding(20).padding(.top,105)
                        }
                }.frame(width: UIScreen.main.bounds.width, height: 517, alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, height: 517, alignment: .center)
                .font(.custom("ND Astroneer.ttf", size: 18))
                .foregroundColor(Color("nobu"))
                .gesture(DragGesture()
                            .onChanged({ (value) in
                                withAnimation{
                                if value.translation.height > 0{
                                    y = -hig + value.translation.height
                                }
                                else{
                                    y = value.translation.height
                                }
                                }
                })
                            .onEnded({ (value) in
                                withAnimation{
        //                            x = 0
                                    if -y < hig / 2{
                                        y = 0
                                    } else{
                                        y = -hig
                                    }
                                  
                                }
                            })
                )
                
                bottomMenu(Swift22: $Swift22)
            }.padding(.top,70)
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Main_Previews: PreviewProvider {
//    static var previews: some View {
//        Main()
//    }
//}


struct bottomMenu:View {
    @Binding var Swift22:Int
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                .foregroundColor(Color("gbu"))
                .border(Color.black, width: 0.5
                )
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
        
        .padding(.top, 5)
    }
    }
}


