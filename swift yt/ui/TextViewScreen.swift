//
//  TextViewScreen.swift
//  swift yt
//
//  Created by jayant kumar on 22/01/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct TextViewScreen: View {
    @available(iOS 16.0, *)
    var body: some View {
        if #available(iOS 16.0, *) {
            Text("Hello, how are you?, i am fine")
                .foregroundColor(.red)
            // .font(.largeTitle)
                .font(.system(size: 25,weight: .bold,
                              design: .monospaced ))
                .italic()
            //  .bold()
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
            //.padding()
                // .baselineOffset(50)
               // .kerning(10)
                //.underline(pattern: .dot, color: .black)
             //   .strikethrough(pattern: .dot)
                .frame(width: 200,height: 50)
                .minimumScaleFactor(0.1)
                .padding()
                .background(.black)
                .cornerRadius(16)
                .shadow(color: .red, radius: 10,x:0.5,y:0.0)
        } else {
            // Fallback on earlier versions
        }
        
    }
}

struct TextViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            TextViewScreen()
        } else {
            // Fallback on earlier versions
        }
    }
}
