//
//  LessonLegs.swift
//  Sobko Gym
//
//  Created by Sofi on 18.01.2021.
//

import SwiftUI
import YouTubePlayer
struct LessonLegs: View {
    @Binding var Swift22:Int
@ObservedObject var model = ViewModel()
    var torso: [String] = []
    var body: some View {
        ZStack{
            VStack(spacing:0){
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("bu"), Color("bi")]), startPoint: .leading, endPoint: .trailing))
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                Spacer()
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                    .foregroundColor(Color("gbu"))
                    .border(Color.black, width: 0.5
                    )
               
            }
            VStack(spacing:10){
                Spacer()
                Text("Lesson")
                    .foregroundColor(.white)
                    .font(.custom("ND Astroneer.ttf", size: 24))
                    .padding(.bottom,6)
            HStack(spacing:0){
                Button(action: {
                    Swift22 = 10
                }, label: {
                    Text("Hands")
                        .frame(width: 105, height: 36, alignment: .center)
                        .border(Color("nobu"),width: 0.9)
                        
                })
                
                Button(action: {
                    Swift22 = 11
                }, label: {
                    Text("Spine")
                        .frame(width: 105, height: 36, alignment: .center)
                        .border(Color("nobu"),width: 0.9)
                       
                })
               
                Button(action: {
                    Swift22 = 12
                }, label: {
                    Text("Torso")
                        .frame(width: 105, height: 36, alignment: .center)
                        .border(Color("nobu"),width: 0.9)
                })
             
                Button(action: {
                    Swift22 = 13
                }, label: {
                    Text("Legs").foregroundColor(.white)
                        .frame(width: 105, height: 36, alignment: .center)
                        .border(Color("nobu"),width: 0.9)
                        .background(Color("bub"))
                    
                })
                
            }.foregroundColor(Color("nobu"))
            .font(.custom("ND Astroneer.ttf", size: 18))
//                Image("hand")
//                    .padding(.top,20)
//                Image("hand")
//                Image("hand")
//                Image("hand")
                ScrollView{
                    VStack(spacing:300){
                        ForEach(model.linkVideo, id:\.self) { stroke in
//                            Video(urlString: stroke)
                            if stroke.category == "legs" {
                                Video(urlString: stroke.url1)
                            }
//                            for i in 0..<model.linkVideo.count {
//
//                            }
                        }
                    }
                    
                }.frame(width: UIScreen.main.bounds.width, height: 635, alignment: .center)
                    .padding(.top,3)
                    .padding(.bottom,20)
            
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
                .padding(.bottom , 40)
            }
        }.edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            model.YoutubList()
             
        })
    }
    
}

//struct LessonLegs_Previews: PreviewProvider {
//    static var previews: some View {
//        LessonLegs()
//    }
//}
