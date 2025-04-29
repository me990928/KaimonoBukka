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
                            ZStack {
                                KaumonoInformationCardBody()
                                VStack {
                                    HStack {
                                        Spacer()
                                        Menu {
                                            // メニューボタン
                                            VStack {
                                                Button {
                                                    
                                                } label: {
                                                    Text("Share")
                                                }

                                            }
                                        } label: {
                                            Image(systemName: "ellipsis")
                                        }
                                    }.padding()
                                    Spacer()
                                }
                            }
                        }.padding().clipped().shadow(radius: 5)
                    }.contextMenu {
                        // 長押し
                        Button {
                            
                        } label: {
                            Text("Delete")
                        }

                    }
                }
            }.navigationTitle("買う物リスト")
        }
    }
}

#Preview {
    KaumonoView()
}
