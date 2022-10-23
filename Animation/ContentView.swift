//
//  ContentView.swift
//  Animation
//
//  Created by Sebastien REMY on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        
        Color.red
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(200)
            .offset(dragAmount)
            .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation}
                .onEnded { _ in
                    withAnimation(.default) {
                        dragAmount = .zero}
                }
            )
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
