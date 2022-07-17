//
//  CheckBoxView.swift
//  swift yt
//
//  Created by jayant kumar on 7/17/22.
//

import SwiftUI

struct CheckBoxView: View {
    
    @State var isCheck = false
    
    var body: some View {
        HStack{
            
            Text("Check Box in Swift ui")
            
            Spacer()
            
            Image(systemName: isCheck ? "checkmark.square.fill" : "square")
                .frame(width: 40,height:40)
                .foregroundColor(isCheck ? .green : .secondary)
                .cornerRadius(10)
                .onTapGesture {
                    isCheck.toggle()
                }
            
            
        }.padding()
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView()
    }
}
