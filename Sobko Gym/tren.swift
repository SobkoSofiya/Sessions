//
//  tren.swift
//  Sobko Gym
//
//  Created by Sofi on 19.01.2021.
//

import SwiftUI
import YouTubePlayer
//struct MyView: View {
//
//  @State private var alertIsPresented: Bool = false
//    @State private var text: String = "" // this is updated as the user types in the text field
//
//  var body: some View {
//    ZStack{
//        VStack{
//            Button(action: {
//                self.alertIsPresented = true
//            }, label: {
//                Text("Button")
//            })
//        }
//    }
//  }
//}
//
//
//struct MyView: View {
//
//  @Binding var alertIsPresented: Bool
//  @Binding var text: String? // this is updated as the user types in the text field
//
//  var body: some View {
//    Text("My Demo View")
//      .textFieldAlert(isPresented: $alertIsPresented) { () -> TextFieldAlert in
//        TextFieldAlert(title: "Alert Title", message: "Alert Message", text: self.$text)
//    }
//  }
//}
//
//class TextFieldAlertViewController: UIViewController {
//
//  /// Presents a UIAlertController (alert style) with a UITextField and a `Done` button
//  /// - Parameters:
//  ///   - title: to be used as title of the UIAlertController
//  ///   - message: to be used as optional message of the UIAlertController
//  ///   - text: binding for the text typed into the UITextField
//  ///   - isPresented: binding to be set to false when the alert is dismissed (`Done` button tapped)
//  init(title: String, message: String?, text: Binding<String?>, isPresented: Binding<Bool>?) {
//    self.alertTitle = title
//    self.message = message
//    self._text = text
//    self.isPresented = isPresented
//    super.init(nibName: nil, bundle: nil)
//  }
//
//  required init?(coder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//  }
//
//  // MARK: - Dependencies
//  private let alertTitle: String
//  private let message: String?
//  @Binding private var text: String?
//  private var isPresented: Binding<Bool>?
//
//  // MARK: - Private Properties
//  private var subscription: AnyCancellable?
//
//  // MARK: - Lifecycle
//  override func viewDidAppear(_ animated: Bool) {
//    super.viewDidAppear(animated)
//    presentAlertController()
//  }
//
//  private func presentAlertController() {
//    guard subscription == nil else { return } // present only once
//
//    let vc = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
//
//    // add a textField and create a subscription to update the `text` binding
//    vc.addTextField { [weak self] textField in
//      guard let self = self else { return }
//      self.subscription = NotificationCenter.default
//        .publisher(for: UITextField.textDidChangeNotification, object: textField)
//        .map { ($0.object as? UITextField)?.text }
//        .assign(to: \.text, on: self)
//    }
//
//    // create a `Done` action that updates the `isPresented` binding when tapped
//    // this is just for Demo only but we should really inject
//    // an array of buttons (with their title, style and tap handler)
//    let action = UIAlertAction(title: "Done", style: .default) { [weak self] _ in
//      self?.isPresented?.wrappedValue = false
//    }
//    vc.addAction(action)
//    present(vc, animated: true, completion: nil)
//  }
//}
//
//
//struct TextFieldAlert {
//
//  // MARK: Properties
//  let title: String
//  let message: String?
//  @Binding var text: String?
//  var isPresented: Binding<Bool>? = nil
//
//  // MARK: Modifiers
//  func dismissable(_ isPresented: Binding<Bool>) -> TextFieldAlert {
//    TextFieldAlert(title: title, message: message, text: $text, isPresented: isPresented)
//  }
//}
//
//extension TextFieldAlert: UIViewControllerRepresentable {
//
//  typealias UIViewControllerType = TextFieldAlertViewController
//
//  func makeUIViewController(context: UIViewControllerRepresentableContext<TextFieldAlert>) -> UIViewControllerType {
//    TextFieldAlertViewController(title: title, message: message, text: $text, isPresented: isPresented)
//  }
//
//  func updateUIViewController(_ uiViewController: UIViewControllerType,
//                              context: UIViewControllerRepresentableContext<TextFieldAlert>) {
//    // no update needed
//  }
//}
//struct TextFieldWrapper<PresentingView: View>: View {
//
//  @Binding var isPresented: Bool
//  let presentingView: PresentingView
//  let content: () -> TextFieldAlert
//
//  var body: some View {
//    ZStack {
//      if (isPresented) { content().dismissable($isPresented) }
//      presentingView
//    }
//  }
//}
//extension View {
//  func textFieldAlert(isPresented: Binding<Bool>,
//                      content: @escaping () -> TextFieldAlert) -> some View {
//    TextFieldWrapper(isPresented: isPresented,
//                     presentingView: self,
//                     content: content)
//  }
//}
//

//extension View {
//
//    func textFieldAlert(isShowing: Binding<Bool>,
//                        text: Binding<String>,
//                        title: String) -> some View {
//        TextFieldAlert(isShowing: isShowing,
//                       text: text,
//                       presenting: self,
//                       title: title)
//    }
//
//}
//
//struct TextFieldAlert<Presenting>: View where Presenting: View {
//
//    @Binding var isShowing: Bool
//    @Binding var text: String
//    let presenting: Presenting
//    let title: String
//
//    var body: some View {
//        GeometryReader { (deviceSize: GeometryProxy) in
//            ZStack {
//                self.presenting
//                    .disabled(isShowing)
//                VStack {
//                    Text(self.title)
//                    TextField(self.$text)
//                    Divider()
//                    HStack {
//                        Button(action: {
//                            withAnimation {
//                                self.isShowing.toggle()
//                            }
//                        }) {
//                            Text("Dismiss")
//                        }
//                    }
//                }
//                .padding()
//                .background(Color.white)
//                .frame(
//                    width: deviceSize.size.width*0.7,
//                    height: deviceSize.size.height*0.7
//                )
//                .shadow(radius: 1)
//                .opacity(self.isShowing ? 1 : 0)
//            }
//        }
//    }
//
//}


//struct ContentView41 : View {
//    @State private var showAlert = false
//
//    var body: some View {
//        VStack {
//            Button(action: {
//                let alertHC = UIHostingController(rootView: MyAlert())
//
//                alertHC.preferredContentSize = CGSize(width: 300, height: 200)
//                alertHC.modalPresentationStyle = UIModalPresentationStyle.formSheet
//
//                UIApplication.shared.windows[0].rootViewController?.present(alertHC, animated: true)
//
//            }) {
//                Text("Show Alert")
//            }
//        }
//    }
//}
//
//struct ContentView41_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView41()
//    }
//}
//
//
//struct MyAlert: View {
//    @State private var text: String = ""
//
//    var body: some View {
//
//        VStack {
//            Text("Enter Input").font(.headline).padding()
//
//            TextField("Hey", text: $text).padding()
//            Divider()
//            HStack {
//                Spacer()
//                Button(action: {
//                    UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
//                }) {
//
//                    Text("Done")
//                }
//                Spacer()
//
//                Divider()
//
//                Spacer()
//                Button(action: {
//                    UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
//                }) {
//                    Text("Cancel")
//                }
//                Spacer()
//            }.padding(0)
//
//
//        }.background(Color(white: 0.9)).frame(width: 268, height: 206, alignment: .center)
//    }
//}


//struct TestView: View {
//    var body: some View {
//        Button(action: { alert() }) { Text("click me") }
//    }
//    private func alert() {
//        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
//        alert.addTextField() { textField in
//            textField.placeholder = "Enter some text"
//        }
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in })
//        showAlert(alert: alert)
//    }
//
//    func showAlert(alert: UIAlertController) {
//        if let controller = topMostViewController() {
//            controller.present(alert, animated: true)
//        }
//    }
//
//    private func keyWindow() -> UIWindow? {
//        return UIApplication.shared.connectedScenes
//        .filter {$0.activationState == .foregroundActive}
//        .compactMap {$0 as? UIWindowScene}
//        .first?.windows.filter {$0.isKeyWindow}.first
//    }
//
//    private func topMostViewController() -> UIViewController? {
//        guard let rootController = keyWindow()?.rootViewController else {
//            return nil
//        }
//        return topMostViewController(for: rootController)
//    }
//
//    private func topMostViewController(for controller: UIViewController) -> UIViewController {
//        if let presentedController = controller.presentedViewController {
//            return topMostViewController(for: presentedController)
//        } else if let navigationController = controller as? UINavigationController {
//            guard let topController = navigationController.topViewController else {
//                return navigationController
//            }
//            return topMostViewController(for: topController)
//        } else if let tabController = controller as? UITabBarController {
//            guard let topController = tabController.selectedViewController else {
//                return tabController
//            }
//            return topMostViewController(for: topController)
//        }
//        return controller
//    }
//
//
//}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

struct ContentView1: View {
    @State private var flag = true

    var body: some View {
        VStack {
            Toggle(isOn: $flag) {
               
            }
        }
        .toggleStyle(MyToggleStyle())
    }
}

struct MyToggleStyle: ToggleStyle {
    
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label

            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius: 23)
                    .frame(width: 34, height: 14)
                    .foregroundColor(configuration.isOn ? Color("bu").opacity(0.5) : Color("bu").opacity(0.5))
                
                RoundedRectangle(cornerRadius: 100)
                    .frame(width: 20, height: 20)
                    
                    .foregroundColor(Color("nobu"))
                    .onTapGesture {
                        withAnimation {
                            configuration.$isOn.wrappedValue.toggle()
                        }
                }
            }
        }
    }
}

//struct My:View {
//    @State var me = MyToggleStyle()
//    var body: some View{
//        MyToggleStyle
//
//
//
//
//
//
//
//
//
//
//
//
//    }
//}



extension String{
    func load1() -> UIImage{
        do{
            guard let url = URL(string: self) else {
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            return UIImage(data: data)
            ?? UIImage()
        }
        catch{
            
        }
         return UIImage()
    }
}

struct ContentView2: View {
   

    var body: some View {
        
        VStack{
            Image(uiImage: "http://dailyworkoutapps.com/privacy-policy.html".load1()).resizable()
        }
    }
}
