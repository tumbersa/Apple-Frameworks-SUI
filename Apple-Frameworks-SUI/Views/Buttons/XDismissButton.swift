//
//  XDismissButton.swift
//  Apple-Frameworks-SUI
//
//  Created by Глеб Капустин on 03.04.2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()

    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(true))
}
