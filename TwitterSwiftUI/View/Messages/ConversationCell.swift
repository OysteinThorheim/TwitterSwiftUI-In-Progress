//
//  ConversationCell.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
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
                    
                    Text("Longer text just to see what happens when I do this")
                        .font(.system(size: 15))
                        .lineLimit(2)
                    
                }
                .foregroundColor(.black)
                .padding(.trailing)
                
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
