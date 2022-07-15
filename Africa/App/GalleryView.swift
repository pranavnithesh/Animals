//
//  GalleryView.swift
//  Africa
//
//  Created by M1089943 on 07/06/22.
//

import SwiftUI

struct GalleryView: View {
    // MARK: PROPERTIES
    @State private var selectedAnimal: String = "lion"
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium )
    
    // Simple Grid Definition
    // let gridLayout: [GridItem] = [
    //     GridItem(.flexible()),
    //     GridItem(.flexible()),
    //     GridItem(.flexible())
    // ]
    
    // Efficient Grid Definition
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3 )
    
    // Dynamic Grid layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn  ))
    }
    
    // MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            
            VStack(alignment: .center, spacing: 30) {
                // Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                // SLider
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                    }
                
                // GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10 ) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                    } //: LOOPS
                } //: GRID
                .animation(.easeIn)
                .onAppear() {
                     gridSwitch()
                }
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: Scrollview
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView() )
    }
}

// MARK: PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
