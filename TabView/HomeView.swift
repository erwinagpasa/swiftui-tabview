//
//  HomeView.swift
//  TabView
//
//  Created by Developer on 17/09/2022.
//

import SwiftUI

struct HomeView: View {
    var body:some View{
        NavigationView{
            VStack{
                Text("First Screen")
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
