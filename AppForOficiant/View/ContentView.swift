//
//  ContentView.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                TablesView()
            }
                .tabItem { Label("Столики", systemImage: "table.furniture") }
        }
    }
}

#Preview {
    ContentView()
}
