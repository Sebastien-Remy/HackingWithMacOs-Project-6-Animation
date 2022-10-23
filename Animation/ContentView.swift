//
//  ContentView.swift
//  Animation
//
//  Created by Sebastien REMY on 23/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAount = 1.0
    
    var body: some View {
        Text("Click me")
            .onTapGesture {
                animationAount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding(100)
            .scaleEffect(animationAount)
            .animation(.default, value: animationAount)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
