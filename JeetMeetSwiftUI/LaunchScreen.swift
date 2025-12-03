//
//  LaunchScreen.swift
//  JeetMeetSwiftUI
//
//  Created by Krishnanunni K A on 02/12/25.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        VStack{
            Image("launchImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(40)
                .padding(.top,100)

            VStack(spacing: 15){
                Button {
                    //action
                } label: {
                    Rectangle()
                        .cornerRadius(10)
                        .frame(width: UIScreen.main.bounds.width/2,height: 50)
                        .foregroundStyle(.red)
                        .overlay {
                            Text("Student")
                                .foregroundStyle(.white)
                        }
                }
                
                Button {
                    //action
                } label: {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2,height: 50)
                        .foregroundStyle(.black)
                        .cornerRadius(10)
                        .overlay {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width/2-2,height: 50-2)
                                .foregroundStyle(.white)
                                .cornerRadius(10)
                                .overlay {
                                    Text("Parent")
                                        .foregroundStyle(.black)
                                }
                           
                        }
                }
            }

                
            
            Spacer()
        }
    }
}

#Preview {
    LaunchScreen()
}
