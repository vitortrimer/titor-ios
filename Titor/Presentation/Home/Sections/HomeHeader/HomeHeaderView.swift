//
//  HomeHeaderView.swift
//  Titor
//
//  Created by Vitor Trimer on 02/12/24.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("TITOR")
                .font(.headline)
                .padding(.leading, 16)
            Spacer()
            RoundedRectangle(cornerRadius: 100)
                .fill(.cyan)
                .frame(width: 32, height: 32)
                .padding(.trailing, 16)
        }
        .frame(height: 64)
        .background(.background)
    }
}

#Preview {
    HomeHeaderView()
}
