//
//  ContentView.swift
//  TabView
//
//  Created by Developer on 16/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var presented = false

    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack(spacing:0) {
            //Content
            ZStack{
                // If + icon tapped show fullscreen
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("Close")
                            .frame(width: 200, height: 50)
                            .background(Color.pink)
                            .cornerRadius(12)
                    })
                })

                switch selectedIndex{
                case 0:
                   HomeView()
               
                case 1:
                    SettingsView()
                    
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
            Divider().padding(.bottom, 20)
            
            //Tabs
            HStack{
                ForEach(0..<5,id: \.self) { number in
                    Spacer() //This makes the icons evenly
                    Button(action: {
                            
                            if number == 2 {
                                presented.toggle()
                            }else{
                                self.selectedIndex = number
                            }
                        
                        }, label:{
                        if number == 2 {
                            Image(systemName: icons[number])
                                    .font(.system(
                                        size: 25,
                                        weight: .regular,
                                        design: .default))
                                    .foregroundColor(.white)
                                    .frame(width:60, height: 60)
                                    .background(Color.blue)
                                    .cornerRadius(30)

                        }else{
                        Image(systemName: icons[number])
                                .font(.system(
                                    size: 25,
                                    weight: .regular,
                                    design: .default))
                                .foregroundColor(selectedIndex == number ? Color(.label) : Color(UIColor.lightGray))
                        }
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
