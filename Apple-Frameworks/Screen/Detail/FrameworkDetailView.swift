//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by User on 08.10.25.
//

import SwiftUI

struct FrameworkDetailView: View {
    @State private var isShowingSafariView = false
    var  framework : Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn more")
                Label("Learn more", systemImage: "book.fill")
                    .foregroundColor(Color("buttonColor"))
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ??
            URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
