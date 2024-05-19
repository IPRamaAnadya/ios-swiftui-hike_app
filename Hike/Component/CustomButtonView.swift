//
//  CustomButtonView.swift
//  Hike
//
//  Created by I putu Rama anadya on 19/05/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle()
                .stroke(LinearGradient(colors: [
                    .customGreyLight,
                    .customGreyMedium
                ], startPoint: .top, endPoint: .bottom),lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWidth(.standard)
                .font(.system(size:30))
                .foregroundStyle(
                    LinearGradient(colors: [
                        .customGreyLight,
                        .customGreyMedium
                    ], startPoint: .top, endPoint: .bottom)
                )
        } //:ZSTACK
        .frame(width: 58, height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
