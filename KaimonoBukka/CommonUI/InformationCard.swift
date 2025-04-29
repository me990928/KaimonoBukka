//
//  InformationCard.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/13.
//

import SwiftUI

struct InformationCard<Content: View>: View {
    
    @State var content: () -> Content
    @State var cardColor: Color
    
    init(cardColor: Color = .gray, @ViewBuilder information: @escaping () -> Content) {
        self.cardColor = cardColor
        self.content = information
    }
    
    var body: some View {
        VStack(spacing: 0) {
            self.content()
        }.background(cardColor, in: RoundedRectangle(cornerRadius: 10))
    }
    
}


#Preview {
    InformationCard() {
        Text("Hello, World!")
    }.disabled(false)
}
