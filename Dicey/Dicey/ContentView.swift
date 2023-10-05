//
//  ContentView.swift
//  Dicey
//
//  Created by Marcelo Amaral Alves on 2023-09-27.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
//    MARK BODY
    
    var body: some View {
        VStack {
            Text("Dicey")
                .foregroundColor(.cyan)
                .bold()
                .font(.system(size: 50))
                .fontWeight(.black)
            
                Spacer()
            
            Button {
                leftDiceNumber = Int.random(in: 1...6)
                rightDiceNumber = Int.random(in: 1...6)
            } label: {
                Text("Click me to roll the dice!")
                    .font(.title)
            }
            
                Spacer()
            
            HStack {
                Image("dice\(leftDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
                Image("dice\(rightDiceNumber)")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            .offset(y: -200)
            .padding()
        }
       
    }
}

#Preview {
    ContentView()
}
