//
//  RedOneView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Red!")
        }
        .padding()
    }
}

struct RedOneView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
    }
}
