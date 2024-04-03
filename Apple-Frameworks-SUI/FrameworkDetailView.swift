//
//  DetailedFrameworkView.swift
//  Apple-Frameworks-SUI
//
//  Created by Глеб Капустин on 03.04.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetalView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetalView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetalView: .constant(true))
        .preferredColorScheme(.dark)
}
