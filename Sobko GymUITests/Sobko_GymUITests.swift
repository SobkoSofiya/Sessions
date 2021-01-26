//
//  Sobko_GymUITests.swift
//  Sobko GymUITests
//
//  Created by Sofi on 18.01.2021.
//

import XCTest
@testable import Sobko_Gym

class Sobko_GymUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   
    func testExampleSignInTrue() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
      
        let signUpButton = app.buttons["Sign Up"]
        signUpButton.tap()
        
        let ivanovTextField = app.textFields["Ivanov"]
        ivanovTextField.tap()
        ivanovTextField.typeText("678")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let ivanovMailComTextField = app.textFields["Ivanov@mail.com"]
        ivanovMailComTextField.tap()
     
        ivanovMailComTextField.typeText("678@")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let secureTextField = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 0)
        secureTextField.tap()
        
        secureTextField.typeText("678")
        
        let secureTextField2 = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 1)
        secureTextField2.tap()
        
        secureTextField2.typeText("678")
        signUpButton.tap()
        ivanovTextField.tap()
        
        ivanovTextField.typeText("678")
        
        let secureTextField3 = app.secureTextFields["●●●●●●"]
        secureTextField3.tap()
        
        secureTextField3.typeText("sdfg")
        app.buttons["Sign In"].tap()
        
        addUIInterruptionMonitor(withDescription: "Error") { alert in
//                    alert.buttons["Ok"].tap()
                    return false
                }
//                app.buttons["Skip"].tap()
      
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testExampleSignInFalse() throws {
        // UI tests must launch the application that they test.
        
        
        let app = XCUIApplication()
        app.launch()
      
        let signUpButton = app.buttons["Sign Up"]
        signUpButton.tap()
        
        let ivanovTextField = app.textFields["Ivanov"]
        ivanovTextField.tap()
        ivanovTextField.typeText("678")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let ivanovMailComTextField = app.textFields["Ivanov@mail.com"]
        ivanovMailComTextField.tap()
     ivanovMailComTextField.typeText("678@")
        app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"return\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let secureTextField = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 0)
        secureTextField.tap()
        
        secureTextField.typeText("678")
        
        let secureTextField2 = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 1)
        secureTextField2.tap()
        
        secureTextField2.typeText("678")
        signUpButton.tap()
        ivanovTextField.tap()
        
        ivanovTextField.typeText("678")
        
        let secureTextField3 = app.secureTextFields["●●●●●●"]
        secureTextField3.tap()
        
        secureTextField3.typeText("sdfg")
        app.buttons["Sign In"].tap()
        secureTextField.tap()
        app.alerts["Error"].scrollViews.otherElements.buttons["Ok"].tap()
//        XCTAssert(false)
    }
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
