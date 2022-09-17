//
//  ContentView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0

    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack{
            //Content
            ZStack{
                switch selectedIndex{
                case 0:
                    NavigationView{
                        VStack{
                            Text("First Screen")
                        }
                        .navigationTitle("Home")
                    }
               
                case 1:
                    NavigationView{
                        VStack{
                            Text("Settings Screen")
                        }
                        .navigationTitle("Settings")
                    }
                    
                case 2:
                    NavigationView{
                        VStack{
                            Text("Add Screen")
                        }
                        .navigationTitle("Add")
                    }

                case 3:
                    NavigationView{
                        VStack{
                            Text("Edit Screen")
                        }
                        .navigationTitle("Edit")
                    }
                    
                default:
                    NavigationView{
                        VStack{
                            Text("Message Screen")
                        }
                        .navigationTitle("Message")
                    }
                }
            }
            
            Spacer() //Put the tab icons at the bottom
            Divider()
            
            //Tabs
            HStack{
                ForEach(0..<5,id: \.self) { number in
                    Spacer() //This makes the icons evenly
                    Button(action: {
                        self.selectedIndex = number
                    }, label:{
                        Image(systemName: icons[number])
                            .font(.system(
                                size: 25,
                                weight: .regular,
                                design: .default))
                            .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))

                    })
                    Spacer() //This makes the icons evenly
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
