//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by User on 08.10.25.
//

import SwiftUI

struct AFButton: View {
    var title :String
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 48)
            .background(Color("buttonColor"))
            .foregroundColor(.white)
            .cornerRadius(16)
    }
}

#Preview {
    AFButton(title: "Test")
}
