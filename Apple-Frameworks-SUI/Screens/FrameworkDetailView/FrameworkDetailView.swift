//
//  DetailedFrameworkView.swift
//  Apple-Frameworks-SUI
//
//  Created by Глеб Капустин on 03.04.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            if let url = URL(string: framework.urlString) {
                SafariView(url: url)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
        .preferredColorScheme(.dark)
}
