//
//  KaimonoEditView.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/29.
//

import SwiftUI

struct KaimonoEditView: View {
    
    let editorTitle: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // 編集フォーム
                HStack {
                    Text(editorTitle).font(.largeTitle).bold()
                    Spacer()
                }
                
                HStack {
                    Text("タイトル: ")
                    TextField("", text: .constant("")).textFieldStyle(.roundedBorder)
                    Spacer()
                }
                
                HStack {
                    Text("店名: ")
                    TextField("", text: .constant("")).textFieldStyle(.roundedBorder)
                    Spacer()
                }
                
                HStack {
                    Text("予定日: ")
                    DatePicker("", selection: .constant(Date())).datePickerStyle(.compact)
                    Spacer()
                }
                
                // アップデートで予定日を通知orリマインダーやカレンダーに追加
                
                Spacer()
            }.padding()
        }.safeAreaInset(edge: .bottom) {
            Button {
                
            } label: {
                Text("保存")
            }.buttonStyle(.borderedProminent).padding()
        }
    }
}

#Preview {
    KaimonoEditView(editorTitle: "編集画面")
}
