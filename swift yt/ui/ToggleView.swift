//
//  ToggleView.swift
//  swift yt
//
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isToggle = false
    
    var body: some View {
        VStack{
            Toggle("Toggle in swift ui",isOn: $isToggle)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            
            if isToggle {
                Text("Text is visible!!")
            }
        }.padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
