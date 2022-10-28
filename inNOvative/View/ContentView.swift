//
//  ContentView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User()
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack(spacing: 30) {
                    /*
                     TITLE
                     */
                    Text("Navigation").font(.system(size: 33)).fontWeight(.semibold).foregroundColor(.white).multilineTextAlignment(.leading).fixedSize()
                    Spacer()
                    /*
                     TODOLIST
                     */
                    NavigationLink(destination: ToDoView()){
                        HStack(spacing: 30){
                            Image("ToDo").resizable().frame(width: screenWidth/6, height: screenWidth/6)
                            Text("To-Do").font(.system(size: 30)).foregroundColor(.orange)
                        }
                    }
                    /*
                     COOKIEKLICKER
                     */
                    NavigationLink(destination: CookieclickerView()){
                        HStack(spacing: 30){
                            Image("Cookie").resizable().frame(width: screenWidth/6, height: screenWidth/6)
                            Text("Cookie Klicker").font(.system(size: 30)).foregroundColor(.orange)
                        }
                    }
                    Spacer()
                    Spacer()
                }
            }
        }.environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

