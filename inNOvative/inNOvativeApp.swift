//
//  inNOvativeApp.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

//LOGIN FILE PATH
let loginpath = "login.txt"


@main
struct inNOvativeApp: App {
    var body: some Scene {
        WindowGroup {
            if(isFileAvailable(filepath: loginpath)){
                ContentView()
            }else {
                LoginView()
            }
        }
    }
}

class User: ObservableObject {
    @Published var cookies = 0
}

// Screen width.
public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// Screen height.
public var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}

