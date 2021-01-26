//
//  SitUp2.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct SitUp2: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SitUp2_Previews: PreviewProvider {
    static var previews: some View {
        main()
    }
}

struct main:View {
    @State var size: CGFloat = UIScreen.main.bounds.height - 130
    var body: some View{
    
       
            ZStack{
                VStack(spacing:0){
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("bu"), Color("bi")]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
                    Rectangle()
                        .foregroundColor(.white)
                   
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 345, height: 200, alignment: .center)
                        .cornerRadius(49)
                        .padding(.bottom,500)
                        
                }
                .animation(.linear)
                .gesture(DragGesture()
                            .onChanged({ (value) in
                                print(value.translation.height)
                               
                })
                            .onEnded({ (value) in
                               
                            })
                )
                
                
                VStack{
                    
                    Spacer()
                    VStack{
                        ZStack{
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
                        
                    }}.offset( y: size)
                        .animation(.linear)
                        .gesture(DragGesture()
                                    .onChanged({ (value) in
                                                if value.translation.height > 0{
                                                    self.size = value.translation.height
                                                }
                                                else{
                                                    let temp = UIScreen.main.bounds.height - 130
                                                    self.size = temp + value.translation.height
                                                }
//                                        print(value.translation.height)
//                                        translation = value.translation
                        })
                                    .onEnded({ (value) in
                                                if value.translation.height > 0{
                                                    if value.translation.height > 200{
                                                        self.size = UIScreen.main.bounds.height - 130
                                                    } else{
                                                        self.size = 15
                                                    }
                                                }
                                                else{
                                                    if value.translation.height < -200{
                                                        self.size = 15
                                                    } else{
                                                        self.size = UIScreen.main.bounds.height - 130
                                                    }
                                                }
                                    })
                        ).animation(.spring())
}.padding(.bottom,100)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width, height: 630, alignment: .center)
                            .foregroundColor(.white)
                    VStack(  spacing:18){
                      
                    ZStack(alignment:.leading){
                        Image("hand")
                            .resizable()
                            .frame(width: 380, height: 165, alignment: .center)
                            
                        Text("Hands").padding(20).padding(.top,105)
                    }.padding(.top,150)
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
                    
                    .offset( y: size)
                        .animation(.linear)
                        .gesture(DragGesture()
                                    .onChanged({ (value) in
                                                if value.translation.height > 0{
                                                    self.size = value.translation.height
                                                }
                                                else{
                                                    let temp = UIScreen.main.bounds.height - 130
                                                    self.size = temp + value.translation.height
                                                }
//                                        print(value.translation.height)
//                                        translation = value.translation
                        })
                                    .onEnded({ (value) in
                                                if value.translation.height > 0{
                                                    if value.translation.height > 200{
                                                        self.size = UIScreen.main.bounds.height - 130
                                                    } else{
                                                        self.size = 15
                                                    }
                                                }
                                                else{
                                                    if value.translation.height < -200{
                                                        self.size = 15
                                                    } else{
                                                        self.size = UIScreen.main.bounds.height - 130
                                                    }
                                                }
                                    })
                        ).animation(.spring())
                    
                    topMenu1()
                }.padding(.top,70)
            }.edgesIgnoringSafeArea(.all)
        }
    }

struct topMenu1:View {
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                .foregroundColor(Color("gbu"))
                .border(Color.black, width: 0.5
                )
        HStack(spacing:69){
            Button(action: {
//                Swift22 = 9
            }, label: {
                VStack{
                    Image("Plan")
                    Text("Plan")
                }
            })
            
            Button(action: {
//                Swift22 = 10
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
//                Swift22 = 14
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
