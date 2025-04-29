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
                Section {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("カレーの材料調達").font(.headline)
                            Spacer()
                            Menu {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                
                            }
                        }
                        Divider()
                        Text("材料の調達方法")
                        Text("予定日: 2025/04/29")
                    }
                }
                
                Section("買うもの") {
                    NavigationLink {
                        Text("買う物の詳細view")
                    } label: {
                        HStack {
                            Text("買うもの1")
                            Spacer()
                            Text("平均: 100円")
                        }
                    }

                }
            }.safeAreaInset(edge: .bottom) {
                Button {} label: {
                    Text("買うものを追加する")
                }.buttonStyle(.borderedProminent).padding()
            }
        }
    }
}

#Preview {
    KaimonoDetailView()
}
