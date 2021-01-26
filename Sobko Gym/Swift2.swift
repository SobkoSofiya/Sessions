


import SwiftUI
import UIKit

struct Swift2: View {
    @State var Swift22 = 1
    @State var Swift23 = 0
    var body: some View {
        
        RootView(Swift22: $Swift22, Swift23: $Swift23).onAppear(perform: {
            let flag = UserDefaults.standard.bool(forKey: "Bol")
            if flag {
                Swift22 = 7
            }
        })
        
    }
    
   
}
//struct Swift2_Previews: PreviewProvider {
//    static var previews: some View {
//        Swift2()
//    }
//}

struct RootView: View {
    @Binding var Swift22:Int
    @State var viewModel = ViewModel()
    @State var nam:String = ""
    @State var heignt:String = ""
    @State var weight:String = ""
    var helll:String = ""
    @Binding var Swift23:Int
    var body: some View {
        
        if Swift22 == 1{
            
            Hello_1(Swift22:$Swift22, Swift23: $Swift23)
            
        } else if Swift22 == 2{
            Hellow_2(Swift22:$Swift22, Swift23: $Swift23)
        }
        else if Swift22 == 3{
            Hello_2_2(Swift22:$Swift22, Swift23: $Swift23)
        }
        else if Swift22 == 4{
            Hello_2_3(Swift22:$Swift22, Swift23: $Swift23)
        }
        else if Swift22 == 5{
            Hello_4(Swift22:$Swift22, Swift23: $Swift23)
        }
        else if Swift22 == 6{
            Hello_5(Swift22:$Swift22, height: $heignt, weight:$weight, Swift23: $Swift23)
        }
        else if Swift22 == 7{
            SignIn(Swift22: $Swift22)
        }
        else if Swift22 == 8{
            SignUp(Swift22: $Swift22, heignt: $heignt, weight: $weight)
        }
        else if Swift22 == 9{
            Back(Swift22:$Swift22, nam: $nam)
            //            Main(Swift22: $Swift22)
        }
        else if Swift22 == 10{
            Lessons(Swift22: $Swift22)
        }
        else if Swift22 == 11{
            LessonSpine(Swift22: $Swift22)
        }
        else if Swift22 == 12{
            LessonTorso(Swift22: $Swift22)
        }
        else if Swift22 == 13{
            LessonLegs(Swift22: $Swift22)
        } else if Swift22 == 14{
            Profile(nam: $nam, Swift22: $Swift22, Swift23: $Swift23)
        }else if Swift22 == 15{
            WebView(Swift22: $Swift22)
        }
        
    }
}
