


import SwiftUI

struct Swift2: View {
    @State var Swift22:Int = 1
    @State var viewModel = ViewModel()
    @State var nam:String = ""
    @State var heignt:String = ""
    @State var weight:String = ""
    var body: some View {
//        if viewModel.gym != []{
//            Swift22 = 7
//        } else {
//            Swift22 = 1
//        }
       
            if Swift22 == 1{
                Hello_1(Swift22:$Swift22)
            } else if Swift22 == 2{
                Hellow_2(Swift22:$Swift22)
            }
            else if Swift22 == 3{
                Hello_2_2(Swift22:$Swift22)
            }
            else if Swift22 == 4{
                Hello_2_3(Swift22:$Swift22)
            }
            else if Swift22 == 5{
                Hello_4(Swift22:$Swift22)
            }
            else if Swift22 == 6{
                Hello_5(Swift22:$Swift22, heignt: $heignt, weight:$weight)
            }
            else if Swift22 == 7{
                SignIn(Swift22: $Swift22, nam: $nam)
            }
            else if Swift22 == 8{
                SignUp(Swift22: $Swift22, heignt: $heignt, weight: $weight)
            }
        else if Swift22 == 9{
                Back(Swift22: $Swift22, nam: $nam)
            }
       
        
    }
}

struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2()
    }
}
