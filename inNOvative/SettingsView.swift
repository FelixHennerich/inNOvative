//
//  SettingsView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Settings").colorInvert()
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    Image("Home").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40)
                    //if(homePage != currentPage){
                        NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)){
                        }
                    //}
                })
                Spacer()
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    Image("Settings").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40)
                    //if(settingsPage != currentPage){
                        NavigationLink(destination: SettingsView().navigationBarBackButtonHidden(true)){
                        }
                    //}
                })
                Spacer()
            }
        }.background(Rectangle().fill(Color.black).frame(width: screenWidth, height: screenHeight).ignoresSafeArea())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().navigationBarBackButtonHidden(true)
    }
}


public var settingsPage: Int{
    return 2
}
private var currentPage: Int{
    return settingsPage
}
