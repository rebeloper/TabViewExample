//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nagy on 17.03.2022.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var selection = 1
//    @StateObject private var tabs = Tabs(initialSelection: 1)
    @StateObject private var tabs = Tabs(initialSelection: .profile)
    
    var body: some View {
        
        TabView(selection: $tabs.selection) {
            NavigationView {
                RootView(title: "Home")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            //                .tag(0)
            .tag(Tab.home)
            
            NavigationView {
                RootView(title: "Profile")
            }
            .tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            //                .tag(1)
            .tag(Tab.profile)
            .badge("42+")
        }
//        .tabViewStyle(.page(indexDisplayMode: .always))
        .environmentObject(tabs)
        #if os(macOS)
        .padding()
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
