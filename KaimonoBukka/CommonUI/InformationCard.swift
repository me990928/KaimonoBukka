//
//  InformationCard.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/13.
//

import SwiftUI

struct InformationCard<Content: View>: View {
    
    @State var content: () -> Content
    @State var cardColor: Color = .blue
    
    init(cardColor: Color = .blue, @ViewBuilder information: @escaping () -> Content) {
        self.content = information
    }
    
    var body: some View {
        VStack {
            self.content()
        }.background(cardColor)
    }
    
}


#Preview {
    InformationCard(cardColor: .brown) {
        Text("Hello, World!")
    }.disabled(<#T##disabled: Bool##Bool#>)
}
