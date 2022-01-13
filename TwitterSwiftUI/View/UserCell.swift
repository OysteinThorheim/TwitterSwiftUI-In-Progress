//
//  UserCell.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
                .padding(.leading)
            
            VStack (alignment: .leading, spacing: 4) {
                Text("venom")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Eddie Brock")
                    .font(.system(size: 14, weight: .semibold))
                
            }
            
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
