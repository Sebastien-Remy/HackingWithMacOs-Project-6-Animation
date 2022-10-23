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
        print (animationAount)
        return VStack {
         
            Stepper("Scale amount", value: $animationAount.animation(.easeInOut(duration: 1)), in: 1...10)
            
            Text("Click me")
                .onTapGesture {
                    animationAount += 1
                }
                .padding(40)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding(100)
                .scaleEffect(animationAount)
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
