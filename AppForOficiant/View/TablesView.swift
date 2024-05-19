//
//  TablesView.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import SwiftUI

struct TablesView: View {
    @StateObject var viewModel = TablesViewModel()
    let layaut : [GridItem] = [.init(), .init()]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layaut, spacing: 16) {
                ForEach(viewModel.tables) { table in
                    NavigationLink {
                        DeteilTableView(viewModel: .init(table: table))
                    } label: {
                        TableCell(viewModel: .init(table: table))
                    }
                    .tint(.black)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
