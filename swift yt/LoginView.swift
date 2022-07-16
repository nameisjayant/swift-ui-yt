//
//  LoginView.swift
//  swift yt
//
//  Created by jayant kumar on 1/10/22.
//

import SwiftUI

struct LoginView: View {
    @State var username:String = ""
    @State var password:String = ""
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
        VStack{
            Text("Login").font(.title)
            TextField("username",text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("password",text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action:{
                if self.username == "Jks" && self.password == "12345" {
                    print("login successfully")
                }else{
                    print("login failed.")
                }
            }){
                Text("Login").font(.body)
            }.padding(.all)
                .frame(width:200,height: 50)
                .background(.black)
                .foregroundColor(.orange)
            
        }.padding(.all)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
