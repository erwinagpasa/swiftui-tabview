//
//  BlueTwoView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct BlueTwoView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Blue!")
        }
        .padding()
    }
}

struct BlueTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BlueTwoView()
    }
}
