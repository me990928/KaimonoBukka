//
//  KaumonoView.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/29.
//

import SwiftUI

struct KaumonoView: View {
    
    var body: some View {
        NavigationStack() {
            ScrollView {
                LazyVStack {
                    NavigationLink {
                        Text("Detail")
                    } label: {
                        InformationCard(cardColor: Color(.systemGray2)) {
                            KaumonoInformationCardBody()
                        }.padding().clipped().shadow(radius: 5)
                    }
                    
                }
            }.navigationTitle("買う物リスト")
        }
    }
}

#Preview {
    KaumonoView()
}
