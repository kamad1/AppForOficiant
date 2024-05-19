//
//  TabelsViewModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import Foundation
// всегда подписываем под ObservableObject за ним будем вести наблюдение и создать ссылку
class TablesViewModel: ObservableObject {
    @Published var tables: [Table]
    
    init() {
        var tables = [Table]()
        for index in 0..<Table.count {
           tables.append(.init(id: index + 1))
        }
        self.tables = tables
    }
}
