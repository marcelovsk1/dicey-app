//
//  ContentView.swift
//  business-card
//
//  Created by Marcelo Amaral Alves on 2023-09-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("light-greyblue")
                .ignoresSafeArea()
            
            VStack{
                
                Image("IMG_0888")
                    .resizable()
                    .frame(width: 200, height: 220)
                    .clipShape(Circle())
                
                Text("Marcelo Amaral")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title2)
                
                RoundedRectangle(cornerRadius: 15)
                    .frame( width: 350, height: 50 )
                    .foregroundColor(.white)
                    .overlay (
                        HStack {
                            Image(systemName: "phone")
                            Text("514-607-7549")
                                .font(.title2)
                        }
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
