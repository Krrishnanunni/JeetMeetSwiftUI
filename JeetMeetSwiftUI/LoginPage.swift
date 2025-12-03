//
//  LoginPage.swift
//  JeetMeetSwiftUI
//
//  Created by Krishnanunni K A on 02/12/25.
//

import SwiftUI

struct LoginPage: View {
    @State var username:String = ""
    var body: some View {
        VStack(alignment:.center){
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(40)
                .padding(.top,100)
            
            Text("Login")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.red)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing], 10.0)
                .foregroundStyle(.black.opacity(0.65))
                
            VStack(spacing:20){
                TextField("Username", text: $username)
                    .frame(width: UIScreen.main.bounds.width - 100, height: 20)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding([.leading,.trailing])
                
                TextField("Password", text: $username)
                    .frame(width: UIScreen.main.bounds.width - 100, height: 20)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding([.leading,.trailing])
            }
            Text("Forgot Password?")
                .foregroundStyle(.primary.opacity(0.8))
            Button {
                //Action
            } label: {
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width-100,height: 50)
                    .foregroundStyle(.black.opacity(0.8))
                    .overlay {
                        Text("Login")
                            .foregroundStyle(.white)
                    }
            }
            
        }
        .offset(y:-50)
    }
}

#Preview {
    LoginPage()
}
