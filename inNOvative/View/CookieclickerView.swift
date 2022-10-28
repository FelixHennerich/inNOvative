//
//  CookieclickerView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

struct CookieclickerView: View {
    @StateObject var user = User()

    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
                Text("Cookies :) \(user.cookies)").foregroundColor(.white)
                Button("Klick") {
                    self.user.cookies += 1
                }.padding().border(.red).background(.red).cornerRadius(7)
            }
        }
    }
}

struct CookieclickerView_Previews: PreviewProvider {
    static var previews: some View {
        CookieclickerView()
    }
}
