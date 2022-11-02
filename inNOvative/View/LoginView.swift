//
//  LoginView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 02.11.22.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    VStack(spacing: 50){
                        TextField("Enter username...", text: $username).foregroundColor(.gray)
                            .multilineTextAlignment(.center).font(.system(size: 30))
                        SecureField("Enter password...", text: $password).foregroundColor(.gray).multilineTextAlignment(.center).font(.system(size: 30))
                    }
                    Spacer()
                    
                    /*
                     CHECK IF PASSWORD AND USERNAME ARE GOOD
                     */
                    
                    if(password != "" && username != ""){
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden()){
                            Text("Login").font(.system(size: 30)).foregroundColor(.orange)
                        }.simultaneousGesture(TapGesture().onEnded{
                            /*
                             CHECK IF USERDATA IS CORRECT NEEDED
                             */
                            
                            createFile(content: "User \(username) Password \(password)", filename: loginpath)
                        })
                    }else {
                        VStack(spacing: 20){
                            Text("You need to enter a valid username & password").font(.system(size: 14)).foregroundColor(.blue)
                            Text("Login").font(.system(size: 30)).foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
