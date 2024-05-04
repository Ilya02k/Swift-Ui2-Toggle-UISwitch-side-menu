//
//  ContentView.swift
//  swift-ui2-switch+sideMenu
//
//  Created by Ann Dosova on 3.05.24.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    VStack {
                        Text("Wallet")
                        Text("Profile")
                        Spacer().frame(height: 500)
                    }
                    Spacer()
                }
                
                RoundedRectangle(cornerRadius: 10).fill(.yellow)
                    .offset(x: isOnToggle ? 100: 0)
                Text("Smth on the screen")
                    .offset(x: isOnToggle ? 100: 0)
            }
            Toggle(isOn: $isOnToggle, label: {
                Text("Show text")
            }).padding()
        }.animation(.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0.3), value: UUID())
    }
}

#Preview {
    ContentView()
}
