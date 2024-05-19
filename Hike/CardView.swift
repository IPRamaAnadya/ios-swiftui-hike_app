//
//  Cardview.swift
//  Hike
//
//  Created by I putu Rama anadya on 19/05/24.
//

import SwiftUI

struct Cardview: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 256, height: 256)
            Image("image-1")
                .resizable()
            .scaledToFit()
        }
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Cardview()
    }
}
