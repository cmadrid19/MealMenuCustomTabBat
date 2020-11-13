//
//  ContentView.swift
//  MealMenuCustomTabBat
//
//  Created by Maxim Macari on 13/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
