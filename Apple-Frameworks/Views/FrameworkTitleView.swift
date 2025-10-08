//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by User on 07.10.25.
//

import SwiftUI

struct FrameworkTitleView: View {
   
    let framework:Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: Framework(name: "",
                                            imageName: "",
                                            urlString: "",
                                            description: ""))
}
