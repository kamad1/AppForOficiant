//
//  TableCell.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import SwiftUI

struct TableCell: View {
    @StateObject var viewModel: TableCellViewModel
    
    var body: some View {
        VStack {
            Text("Стол \(viewModel.table.id)")
            Text(viewModel.table.isfree ? "Стол свободен" : "Гостей \(viewModel.table.guests)")
            Text("Сумма чека: \(viewModel.table.sum) руб")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 160)
        .background(viewModel.color)
        .clipShape(.rect(cornerRadii: .init(topLeading: 60, bottomTrailing: 60, topTrailing: 0)))
        .shadow(radius: 1)
        .shadow(color: .indigo, radius: 3)
        .padding(.horizontal, 8)
    }
}

#Preview {
    TableCell(viewModel: .init(table: .init(id: 1, guests: 6)))
}
