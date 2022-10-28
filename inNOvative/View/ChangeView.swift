//
//  ChangeView.swift
//  inNOvative
//
//  Created by Felix Hennerich on 28.10.22.
//

import SwiftUI

struct ChangeView: View {
    @EnvironmentObject var user: User

    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView()
    }
}
