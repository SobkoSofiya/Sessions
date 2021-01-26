//
//  SitUp1.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct SitUp1: View {
    @State var btnColor1 = true
    @State var error = false
    @State var mess = ""

    var colums = Array(0...60).map{"\($0)"}
    let layon = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var fl = CGFloat(0)
    @State var contDay = UserDefaults.standard.integer(forKey: "Keey")
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
                
                LazyVGrid(columns: layon, spacing: 15, content: {
                    ForEach(1...60, id:\.self){ item in
                        ZStack{
                            Circle()
                                
                                .strokeBorder(Color("bu"), lineWidth: 1)
                               
                                .frame(width: 42, height: 42, alignment: .center)
                                .background(Circle())
                                .foregroundColor(item-1 < contDay ? Color("bu") : Color.white)
                            
                            Text("\(item)").font(.custom("ND Astroneer.ttf", size: 20))
                                .foregroundColor(item-1 < contDay ? Color.white : Color("bu")).onTapGesture(perform: {
                                    if item-1 == contDay{
                                        contDay += 1
                                        let scene = UIApplication.shared.connectedScenes.first as! UIWindowScene
                                                                let windowSceneDelegate = scene.delegate as? SceneDelegate
                                                                let window = UIWindow(windowScene: scene)
                                        window.rootViewController = UIHostingController(rootView: SitUp2(contDay: $contDay))
                                                                windowSceneDelegate?.window = window
                                                                window.makeKeyAndVisible()
                                        
                                    } else if item-1 < contDay{
                                        mess = "Training session completed"
                                        error.toggle()
                                        
                                    } else {
                                        mess = "Training is not available"
                                        error.toggle()
                                    }
                                }).alert(isPresented: $error, content: {
                                    Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("OK")))
                                })
                        }
                    }
                }).frame(width: UIScreen.main.bounds.width/1.1)
                ZStack{
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 25.0)
                        .strokeBorder(Color("nobu"), lineWidth: 1)
//                        .clipShape(Circle(), style: FillStyle())
                        .frame(width: 330, height: 45, alignment: .center)
                        
//                        .cornerRadius(23)
                        Rectangle()
                            .foregroundColor(Color("nobu"))
                            .frame(width:330/60*CGFloat(contDay) == 0 ? 0 : 330/60*CGFloat(contDay) > 49 ? 330/60*CGFloat(contDay) :  49 , height: 45, alignment: .center)
                            
                            .cornerRadius(23)
                }
                    Text("\(contDay*100/60)%")
                        .font(.custom("ND Astroneer.ttf", size: 20))
                        .foregroundColor(contDay*100/60 > 48 ? Color.white : Color("bu"))
                   
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
