//
//  OnBoardingView.swift
//  swift yt
//
//  Created by jayant kumar on 7/17/22.
//

import SwiftUI

struct OnBoardModel : Identifiable {
    
    var id = UUID()
    var title:String
    var des:String
    var image:String
    
}

extension OnBoardModel {
    
    static var onBoardData:[OnBoardModel] {
        [
         OnBoardModel(title: "First Screen", des: "My First Screen", image: "one"),
         OnBoardModel(title: "Second Screen", des: "My Second Screen", image: "two"),
         OnBoardModel(title: "Third Screen", des: "My Third Screen", image: "three")
         
        ]
    }
    
}

struct OnBoardingView: View {
    
    var data = OnBoardModel.onBoardData
    
    init(){
        
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = .gray
        
    }
    
    @State var currentPage = 0
    
    var body: some View {
        VStack{
            
            TabView(selection:$currentPage){
                ForEach(data.indices) { index in
                    
                    VStack{
                        
                        Image(data[index].image)
                            .resizable()
                            .frame(height:300)
                        
                        Text(data[index].title)
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text(data[index].des)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                    }
                    
                }
            }.tabViewStyle(.page(indexDisplayMode: .always))
            
            HStack{
                
                Spacer()
                
                Button {
                    
                    withAnimation{
                        if currentPage < data.count - 1 {
                            currentPage += 1
                        }
                    }
                    
                } label: {
                    
                    Image(systemName: currentPage == data.count - 1  ? "checkmark.circle" : "chevron.right.circle")
                        .frame(width: 40,height: 40,alignment: .center)
                    
                }
                
                
            }.padding()
                .foregroundColor(.primary)
            
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
