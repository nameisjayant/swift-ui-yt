//
//  BottomSheetView.swift
//  swift yt
//
//  Created by jayant kumar on 7/16/22.
//

import SwiftUI

struct BottomSheetView: View {
    
    @State var isOpen = false
    
    var body: some View {
        Button("Click here"){
            isOpen.toggle()
        }.sheet(isPresented : $isOpen){
            if #available(iOS 16.0, *) {
                BottomSheetContentView()
                    .presentationDetents([.height(200)])
            } else {
                // Fallback on earlier versions
                BottomSheetContentView()
            }
        }
    }
}

struct BottomSheetContentView : View{
    
    var body: some View{
        Text(" This is bottomsheet contents")
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
