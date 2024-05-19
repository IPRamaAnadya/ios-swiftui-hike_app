//
//  Cardview.swift
//  Hike
//
//  Created by I putu Rama anadya on 19/05/24.
//

import SwiftUI

struct Cardview: View {
    
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
                    
        imageNumber = randomNumber
    }
    
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
                                isShowingSheet.toggle()
                            },
                            label: {
                            CustomButtonView()
                        })
                        .sheet(
                            isPresented: $isShowingSheet,
                            content: {
                                SettingsView()
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
                            }
                        )
                    }
                    Text("Fund and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGreyMedium)
                } //:Header
                .padding(.horizontal, 30)
                // MARK: - Main Content
                ZStack {
                    
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER
                Button(action: {
                    // ACTION: Generate random number
                    randomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                })
                .buttonStyle(GradientButton())
            }//: ZSTACK
        }//: CARD
        .frame(width: 320, height: 570, alignment: .center)
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Cardview()
    }
}
