//
//  ContentView.swift
//  PrimeiroAppSwiftUITurma351BF
//
//  Created by Michael Bressiani on 12/12/23.
//

// command + option + seta esconde codigo dentro das chaves

import SwiftUI

struct ContentView: View {
    var body: some View {
    VStack(alignment: .center, spacing: 10.0) {
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Text("Michael")
                .background(Color.yellow)
            Text("Bressiani")
                .background(Color.green)
        }
        
        Text("29 anos")
            .background(Color.blue)
    }
    .padding()
    .background(Color.black)
    }
}

#Preview {
    ContentView()
}
