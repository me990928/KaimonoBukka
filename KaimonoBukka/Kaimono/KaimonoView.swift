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
                        
                    } label: {
                        InformationCard(cardColor: Color(.systemGray2)) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("カレーを買いに行く今日もお聞き機佐久間さん").font(.headline)
                                    Spacer()
                                    Menu {
                                        Text("詳細")
                                    } label: {
                                        Image(systemName: "ellipsis")
                                    }
                                    
                                }
                                Divider()
                                Text("店名: OK")
                                Text("予定日: 2025/04/29")
                            }.padding()
                        }.padding()
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
            }
        }
    }
}

#Preview {
    KaimonoView()
}
