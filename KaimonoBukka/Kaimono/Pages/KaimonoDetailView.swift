//
//  KaimonoDetailView.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/29.
//

import SwiftUI

struct KaimonoDetailView: View {
    var body: some View {
        NavigationStack {
            List {
                
                // 買い物メモ
                Section {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("カレーの材料調達").font(.headline)
                            Spacer()
                        }
                        Divider()
                        Text("材料の調達方法")
                        Text("予定日: 2025/04/29")
                    }
                }
                
                // 買う物リスト
                Section("買うもの") {
                    NavigationLink {
                        Text("買う物の詳細view")
                    } label: {
                        VStack {
                            HStack {
                                Text("買うもの1")
                                Spacer()
                                Text("平均: 100円")
                            }
                            HStack {
                                Text("ジャンル").font(.caption).foregroundStyle(.gray)
                                Spacer()
                            }
                        }
                    }
                    
                }
            }.safeAreaInset(edge: .bottom) {
                // 追加ボタン
                Button {} label: {
                    Text("買うものを追加する")
                }.buttonStyle(.borderedProminent).padding()
            }.toolbar {
                // ツールバー
                ToolbarItem {
                    Button{} label: {
                        Image(systemName: "trash").foregroundStyle(.red)
                    }
                }
                
                ToolbarItem {
                    Button("Edit") {}
                }
            }
        }
    }
}

#Preview {
    KaimonoDetailView()
}
