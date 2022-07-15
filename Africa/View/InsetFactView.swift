//
//  InsetFactView.swift
//  Africa
//
//  Created by M1089943 on 08/06/22.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: PROPERTIES
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 160, maxHeight: 180 )
        } //: GROUPBOX
    }
}

// MARK: PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
