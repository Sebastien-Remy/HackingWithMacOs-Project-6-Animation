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
                //animationAount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAount)
                .opacity(2 - animationAount)
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAount
                    )
            )
            .padding(100)
            .onAppear {
                animationAount = 2
            }
//            .blur(radius: 0.5)
//            .animation(.default, value: animationAount)
//            .animation(.easeOut, value: animationAount)
//            .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAount)
 //           .animation(.easeInOut(duration: 2)
 //               .delay(1),
 //                      value: animationAount)
  //          .animation(.easeInOut(duration: 1)
 //               .repeatForever(autoreverses: true), value: animationAount)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
