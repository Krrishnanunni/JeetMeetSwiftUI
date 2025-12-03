//
//  StdDashBoardView.swift
//  JeetMeetSwiftUI
//
//  Created by Krishnanunni K A on 02/12/25.
//

import SwiftUI

struct StdDashBoardView: View {
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Image("Group 4")
                    Spacer()
                    Image("Developer Link Jeet")
                    Spacer()
                    Image("message-square")
                    
                }
                .padding()
                .background(Color.red)
                ZStack {
                    ScrollView(.vertical) {
                        VStack {
                            ZStack{
                                Circle()
                                    .foregroundStyle(.red)
                                    .frame(width: UIScreen.main.bounds.width * 2,
                                           height: UIScreen.main.bounds.height)
                                    .offset(y: -UIScreen.main.bounds.height/2)
                                
                                VStack{
                                    
                                    VStack(spacing:50){
                                        Spacer()
                                        dashBoardCard
                                        Spacer()
                                        Spacer()
                                        noticeCard
                                        Spacer()
                                    }
                                    
                                }
                            }
                            
                        }
                    }
                }
                .background(Color(UIKit.UIColor.systemGray5))
            }
        }
        .background(Color.red)
        
    }
    
    var dashBoardCard: some View{
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.white)
                .frame(width: 325,
                       height: 235) // Adjusted height slightly
                .padding(.top, 50)
                .shadow(radius: 5) // Optional: Adds depth
                .overlay {
                    VStack {
                        // --- Top Section (Image & Name) ---
                        VStack {
                            Image("studentProfile")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Added to prevent image distortion
                                .frame(width: 100, height: 100)    // Fixed size is safer than screen calculation
                                .clipShape(Circle())
                            
                            Text("Siobhan L.Seal")
                                .font(.headline)
                            
                            HStack {
                                Text("Reg No : ")
                                Text("1234")
                            }
                            .font(.caption)
                            .foregroundStyle(.black.opacity(0.75))
                        }
                        .padding(.bottom, 10)
                        .offset(y: 10)
                        
                        // --- Bottom Section (Details with Divider) ---
                        HStack {
                            // Left Side
                            VStack(alignment: .trailing, spacing: 20) {
                                Text("Class - 4")
                                Text("Roll No : 12")
                            }
                            .font(.caption)
                            .foregroundStyle(.black.opacity(0.75))
                            .frame(maxWidth: .infinity,
                                   alignment: .trailing) // <--- 1. Equal Width
                            
                            // Center Divider
                            Divider()
                                .frame(height: 50)
                            
                            // Right Side
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Division - A")
                                Text("DOB : 14/04/2004")
                            }
                            .font(.caption)
                            .foregroundStyle(.black.opacity(0.75))
                            .frame(maxWidth: .infinity,
                                   alignment: .leading) // <--- 2. Equal Width
                        }
                        .padding(.horizontal)
                        
                        VStack{
                            Image("parentProfile")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Added to prevent image distortion
                                .frame(width: 45, height: 45)    // Fixed size is safer than screen calculation
                                .clipShape(Circle())
                                .background(
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundStyle(.red)
                                )
                                Text("Madhu pk")
                                .foregroundStyle(.white)
                            Text("Parent")
                                .font(.caption)
                                .foregroundStyle(.white)
                        }
                        .offset(y: 50)
                    }
                }
        }
    var noticeCard: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.white)
            .frame(width: width - 30, height: 400)
            .overlay {
                VStack{
                    
                    
                    
                    Spacer()
                    VStack(alignment: .leading){
                        Spacer()
                        HStack{
                            Image(systemName: "bell.fill")
                                .foregroundStyle(.yellow)
                            Text("Notice")
                                .foregroundStyle(Color(UIKit.UIColor.systemGray))
                                .fontWeight(.medium)
                                
                            Spacer()
                        }
//                        .padding([.leading,.top])
                        .padding(.top,50)
                        
                        ForEach(noticeTitles, id: \.self){ notice in
                            Divider()
                            Text("NOTICE")
                            Text(notice)
                                .foregroundStyle(.black.opacity(0.75))
                                .font(.caption)
                            
                        }
                        Spacer()
                        Spacer()
                    }
                    .frame(height: 300)
                    .padding()
                    
                    
                }.frame(height: 350)
            }
    }
    // Array of Notice Titles
    let noticeTitles: [String] = [
        "Annual Sports Day Practice Schedule",
        "Library Books Return Reminder",
        "Parent-Teacher Meeting (PTM) Dates",
        "Science Fair Registration Deadline",
        "School Bus Route Change Notification",
        "Holiday Notice: Republic Day",
        "Uniform Policy Update",
        "Mandatory Computer Lab Orientation"
    ]

    // Array of Notice Descriptions
    let noticeDescriptions: [String] = [
        "All students participating in the Annual Sports Day must attend practice sessions after school from 3:30 PM to 4:30 PM, starting next Monday. Please report to the main field.",
        "The deadline for returning all library books is February 15th. Fines will be applied to late returns. Please check your book due dates and return them promptly.",
        "The Parent-Teacher Meeting (PTM) for all grades will be held on February 25th and 26th. Specific time slots will be shared by your class teacher via email next week.",
        "Students interested in participating in the school Science Fair must register their project details by this Friday. Forms are available on the school website or in the Principal's office.",
        "Effective immediately, Bus Route 4 will have a minor diversion due to road work. Please check the updated schedule and stops posted on the school notice board.",
        "The school will remain closed on January 26th in observance of Republic Day. Classes will resume on January 27th as per the regular schedule.",
        "A minor update to the school uniform policy regarding acceptable shoe colors has been issued. The updated guidelines are available for review in the student handbook section of the website.",
        "All new students and Grade 8 students must attend a mandatory Computer Lab orientation session on January 30th during the 5th period. Attendance will be taken."
    ]
    
}

#Preview {
    StdDashBoardView()
}
