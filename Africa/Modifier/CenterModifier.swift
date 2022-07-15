//
//  CenterModifier.swift
//  Africa
//
//  Created by M1089943 on 09/06/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
