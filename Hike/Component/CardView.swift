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
            
            CustomBackgroundView()
            
            VStack {
                
                // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGreyLight,
                                        .customGreyMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button(
                            action: {
                                // ACTION: Show a Sheet
                            },
                            label: {
                            CustomButtonView()
                        })
                    }
                    Text("Fund and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGreyMedium)
                } //:Header
                .padding(.horizontal, 30)
                // MARK: - Main Content
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
                
                // MARK: - FOOTER
            }
        }
        .frame(width: 320, height: 570, alignment: .center)
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Cardview()
    }
}
