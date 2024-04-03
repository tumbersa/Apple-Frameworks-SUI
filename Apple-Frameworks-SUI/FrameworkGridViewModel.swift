//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks-SUI
//
//  Created by Глеб Капустин on 03.04.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}

