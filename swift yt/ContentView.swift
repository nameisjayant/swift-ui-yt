//
//  ContentView.swift
//  swift yt
//
//  Created by jayant kumar on 1/8/22.
//

import SwiftUI

struct ContentView: View {
   @State var tap:Int = 0
    var body: some View {
        VStack{
            Button(action:{
                self.tap += 1
            }){
                Text("click here").font(.body)
            }.foregroundColor(.orange)
                .padding(.all)
                .background(.black)
                .cornerRadius(16)
        }
        Text("button click \(tap) times")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
