//
//  ContentView.swift
//  BugsplatTester
//
//  Created by Geoff Raeder on 6/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Crash!") {
            fatalError()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.accentColor)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
