//
//  KaimonoView.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/29.
//

import SwiftUI

struct KaimonoView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    NavigationLink {
                        KaimonoDetailView()
                    } label: {
                        InformationCard(cardColor: Color(.systemGray3)) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("カレーを買いに行く今日もお聞き機佐久間さん").lineLimit(1).font(.headline)
                                    Spacer()
                                    
                                }
                                Divider()
                                Text("店名: OK").lineLimit(1)
                                Text("予定日: 2025/04/29")
                            }.padding()
                        }.padding().foregroundStyle(Color(.label))
                    }.contextMenu {
                        Text("Delete")
                    }
                }
            }.toolbar {
                ToolbarItem {
                    Button {
                        // 作成フォームへ
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            }.navigationTitle(Text("買い物リスト"))
        }
    }
}

#Preview {
    KaimonoView()
}
