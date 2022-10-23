//
//  ContentView.swift
//  Animation
//
//  Created by Sebastien REMY on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAount = 0.0
    
    var body: some View {
        
        Text("Click me")
            .onTapGesture {
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1))  {
                    animationAount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding(100)
            .rotation3DEffect(.degrees(animationAount), axis:   (x: 0, y: 1, z: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
