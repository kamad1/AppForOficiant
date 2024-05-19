//
//  DetailTableViewModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import Foundation

class DetailTableViewModel: ObservableObject {
    @Published var table: Table
    @Published var dishes: [Dish] = []
    @Published var selectedDish: Dish = .init(title: "не выбран", price: 0)
    
    
    init(table: Table) {
        self.table = table
        getData()
    }
    
    func getData() {
        self.dishes = Dish.mockData
        self.selectedDish = dishes[0]
    }
}
