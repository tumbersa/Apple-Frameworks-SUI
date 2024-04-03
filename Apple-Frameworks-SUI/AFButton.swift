//
//  AFButton.swift
//  Apple-Frameworks-SUI
//
//  Created by Глеб Капустин on 03.04.2024.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.pink)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AFButton(title: "Learn More")
}
