//
//  CreditsView.swift
//  Africa
//
//  Created by M1089943 on 09/06/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128 )
            Text("""
            Copyright © Pranav Nithesh J
    All rights reserved
    Better Apps ♡  Less Code.
    """)
            .font(.footnote)
        .multilineTextAlignment(.center )
        } //: VSTACK
        .padding()
        .opacity(0.4 )
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
