//
//  MessageView.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct MessageView: View {
    
    let message: MockMessage
    
    var body: some View {
        HStack{
            if message.isCurrentUser{
                Spacer()
                Text (message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Chatbubble(isFromCurrentuser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text (message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(Chatbubble(isFromCurrentuser: false))
                        .foregroundColor(.black)
                    
                    
                }.padding(.horizontal)
                
                Spacer()
                
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}
