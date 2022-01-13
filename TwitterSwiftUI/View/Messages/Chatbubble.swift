//
//  Chatbubble.swift
//  TwitterSwiftUI
//
//  Created by Øystein Thorheim on 13/01/2022.
//

import SwiftUI

struct Chatbubble: Shape {
    var isFromCurrentuser: Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentuser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

struct Chatbubble_Previews: PreviewProvider {
    static var previews: some View {
        Chatbubble(isFromCurrentuser: false)
    }
}
