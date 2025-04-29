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
                            ZStack {
                                VStack(alignment: .leading) {
                                    Text("カレーを買いに行く今日もお聞き機佐久間さん").font(.headline).padding(.top)
                                    Divider()
                                    Text("店名: OK")
                                    Text("予定日: 2025年4月29日")
                                }.padding()
                                VStack{
                                    HStack{
                                        Spacer()
                                        Menu {
                                            Text("Delete")
                                        } label: {
                                            Image(systemName: "ellipsis")
                                        }
                                    }
                                    Spacer()
                                }.padding()
                            }
                        }.padding()
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
