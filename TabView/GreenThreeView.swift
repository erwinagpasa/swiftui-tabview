//
//  GreenThreeView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct GreenThreeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Green!")
        }
        .padding()
    }
}

struct GreenThreeView_Previews: PreviewProvider {
    static var previews: some View {
        GreenThreeView()
    }
}

