//
//  SettingsView.swift
//  TabView
//
//  Created by Developer on 17/09/2022.
//

import SwiftUI

struct SettingsView: View {
    var body:some View{
        NavigationView{
            VStack{
                Text("Settings Screen")
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
