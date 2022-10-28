//
//  ContentView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("first view").colorInvert()
            Spacer()
            HStack{
                Spacer()
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    Image("Home").resizable().aspectRatio(contentMode: .fit).frame(width:40, height: 40)
                    if(homePage != currentPage){
                        NavigationView{
                            NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true)){
                            }
                        }
                    }
                })
                Spacer()
                Button(action: {
                    print("Floating Button Click")
                }, label: {
                    Image("Settings").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40)
                    if(settingsPage != currentPage){
                        NavigationLink(destination: SettingsView()){}
                    }
                })
                Spacer()
            }
        }.background(Rectangle().fill(Color.black).frame(width: screenWidth, height: screenHeight).ignoresSafeArea())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().navigationBarBackButtonHidden(true)
    }
}

public var homePage: Int{
    return 1
}
private var currentPage: Int{
    return homePage
}
