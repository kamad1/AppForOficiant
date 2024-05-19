//
//  TableCellViewModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import SwiftUI

class TableCellViewModel: ObservableObject {
    let table: Table
    
    var color: Color {
        guard !table.isfree else { return .white }
        switch table.sum {
        case 0..<1500: return .green
        case 1500..<4500: return .yellow
        case 4500..<7000: return .orange
        default: return .red
        }
    }
    init(table: Table) {
        self.table = table
    }
}
