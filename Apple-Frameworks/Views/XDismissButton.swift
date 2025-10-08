//
//  SwiftUIView.swift
//  Apple-Frameworks
//
//  Created by User on 08.10.25.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView :Bool
    var body: some View {
        HStack { Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image (systemName: "xmark")
                    .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
            }
        } .padding()    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
