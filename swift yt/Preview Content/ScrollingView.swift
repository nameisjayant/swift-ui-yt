//
//  ScrollingView.swift
//  swift yt
//
//  Created by jayant kumar on 1/10/22.
//

import SwiftUI

struct ScrollingView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false){
        HStack{
            ForEach(1..<20){ index in
                Text("\(index)")
                    .frame(width:100,height: 100)
                    .foregroundColor(.white)
                    .background(.orange)
                    .font(.largeTitle)
                    .cornerRadius(50)
            }
        }.padding(.all)
        }
    }
}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
