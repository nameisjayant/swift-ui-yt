//
//  NavigateView.swift
//  swift yt
//
//  Created by jayant kumar on 1/10/22.
//

import SwiftUI

struct NavigateView: View {
    var body: some View {
        NavigationView{
            NavigationLink(
                destination : LoginView()
                    
            ){
                Text("First Screen")
            }
        }
    }
}

struct NavigateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigateView()
    }
}
