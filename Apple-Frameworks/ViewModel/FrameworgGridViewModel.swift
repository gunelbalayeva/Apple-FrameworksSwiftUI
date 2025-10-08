//
//  FrameworgGridViewModel.swift
//  Apple-Frameworks
//
//  Created by User on 08.10.25.
//

import Foundation
import SwiftUI
final class FrameworgGridViewModel :ObservableObject {
    init(){}
    var selectedFramework : Framework? {
        didSet {isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
