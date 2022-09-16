//
//  ContentView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.lightGray
      }
    
    var body: some View {
        TabView {
            RedOneView()
                .badge(2)
                .tabItem {
                    Image(systemName: "house")
                    Text("Red")
                }

            BlueTwoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Blue")
                }

            GreenThreeView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Green")
                }
        }
        .accentColor(.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
