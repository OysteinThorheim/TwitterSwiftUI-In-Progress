//
//  Chatview.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct Chatview: View {
    @State var messageText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach (0..<15) { _ in
                        HStack{
                            Spacer()
                            Text ("Chat bubble")
                                .padding()
                                .background(Color.blue)
                                .clipShape(Chatbubble(isFromCurrentuser: true))
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct Chatview_Previews: PreviewProvider {
    static var previews: some View {
        Chatview()
    }
}
