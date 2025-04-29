//
//  KaumonoInformationCardBody.swift
//  KaimonoBukka
//
//  Created by 広瀬友哉 on 2025/04/29.
//

import SwiftUI

struct KaumonoInformationCardBody: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle().fill(Color.gray).frame(height: 100).clipShape(RoundedRectangle(cornerRadius: 10, style: RoundedCornerStyle.circular)).shadow(radius: 2)
            HStack {
                Text("ジャンル名")
                Spacer()
                Text("平均: 1000円")
            }.padding()
        }
    }
}

#Preview {
    KaumonoInformationCardBody()
}
