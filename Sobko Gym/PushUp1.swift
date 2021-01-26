//
//  PushUp1.swift
//  Sobko Gym
//
//  Created by Sofi on 20.01.2021.
//

import SwiftUI

struct PushUp1: View {
    @State var size: CGFloat = 200
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 100, height: 100, alignment: .center  )
                .foregroundColor(.black).offset( y: size)
        }
        
        .animation(.linear)
        .gesture(DragGesture()
                    .onChanged({ (value) in
                                if value.translation.height > 0{
                                    self.size = value.translation.height
                                }
                                else{
                                    let temp = 50
                                    self.size = CGFloat(temp) + value.translation.height
                                }
//                                        print(value.translation.height)
//                                        translation = value.translation
        })
                    .onEnded({ (value) in
                                if value.translation.height > 0{
                                    if value.translation.height > 200{
                                        self.size = 50
                                    } else{
                                        self.size = 50
                                    }
                                }
                                else{
                                    if value.translation.height < -200{
                                        self.size = 50
                                    } else{
                                        self.size = 50
                                    }
                                }
                    })
        ).animation(.spring())
    }
}
//.offset(y: translation.height)
//.animation(.linear)
//.gesture(DragGesture()
//            .onChanged({ (value) in
//                print(value.translation.height)
//                translation = value.translation
//})
//            .onEnded({ (value) in
//                translation = CGSize.zero
//            })
//)


//@available(iOS 14.0, *)
struct PushUp1_Previews: PreviewProvider {
    static var previews: some View {
        Home1()
    }
}


//@available(iOS 14.0, *)
struct Home1:View {
    @State var hig = UIScreen.main.bounds.height-200
    @State var y = -UIScreen.main.bounds.height+200
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
            Color.white
            Hory()
                .background(Color.black)
                .offset(y: y)
        }.gesture(DragGesture()
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
    }
}
struct Hory:View {
    var body: some View{
        Rectangle()
            .frame(width: UIScreen.main.bounds.width-100, height: UIScreen.main.bounds.height-200, alignment: .center)
    }
}
