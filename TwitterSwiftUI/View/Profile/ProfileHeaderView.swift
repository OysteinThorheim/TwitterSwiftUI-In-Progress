//
//  ProfileHeaderView.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack{
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            Text("Bruce Wayne")
                .font(.system(size: 16, weight:  .semibold))
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            Text("I'm batman")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack(spacing: 40){
                VStack{
                    Text("12")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack{
                    Text("12")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionbuttonView(isCurrentUser: false)
            
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
