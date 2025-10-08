//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by User on 07.10.25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel : FrameworgGridViewModel
 
    var body: some View {
        NavigationView {
            List {
                    ForEach (MockData.frameworks){ framework in
                        NavigationLink(
                            destination: FrameworkDetailView(
                                framework: framework,
                                isShowingDetailView: $viewModel.isShowingDetailView
                            )
                        ) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
            }
            .navigationTitle("🍎 Frameworks")
        } .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView(viewModel: FrameworgGridViewModel())
    
}
