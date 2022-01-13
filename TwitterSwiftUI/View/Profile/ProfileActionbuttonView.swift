//
//  ProfileActionbuttonView.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct ProfileActionbuttonView: View {
    let isCurrentUser: Bool
    var body: some View {
        
        if isCurrentUser {
            
            Button(action: {}, label: {
                Text("Edit profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
            })
                .cornerRadius(20)
            
        } else{
            HStack {
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                    .cornerRadius(20)
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                    .cornerRadius(20)
                
            }
        }
    }
}

struct ProfileActionbuttonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionbuttonView(isCurrentUser: false)
    }
}
