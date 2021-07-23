//
//  ContentView.swift
//  BugsplatTester
//
//  Created by Geoff Raeder on 6/13/21.
//

import SwiftUI

struct ContentView: View {

    let prop: Int? = nil

    var body: some View {
        Button("Crash!") {
            _ = prop!
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
