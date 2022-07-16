//
//  BottomTabView.swift
//  swift yt
//
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem{
                    Label("Profile",systemImage: "person.fill")
                }
            ProfileView()
                .tabItem{
                    Label("Tv",systemImage: "tv.fill")
                }
        }
    }
}

struct HomeView : View {
    
    var body: some View{
        Text("This is a home page")
    }
    
}

struct ProfileView : View {
    var body: some View{
        Text("This is profle page")
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
