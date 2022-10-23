//
//  CornerRotateModifier.swift
//  Animation
//
//  Created by Sebastien REMY on 23/10/2022.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amout: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amout), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amout: -90, anchor: .topLeading),
                  identity: CornerRotateModifier(amout: 0, anchor: .topLeading)
        )
    }
}
