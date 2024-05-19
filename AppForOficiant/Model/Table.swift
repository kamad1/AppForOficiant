//
//  TableModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import Foundation

final class Table: Identifiable {
    static let count = 38
    
    let id: Int
    var guests: Int
    var order: [Position] = []
    
    var isfree: Bool { guests == 0 }
    var sum: Int {
        let prices = order.map { $0.cost }
        let s = prices.reduce(0, +)
        return s
    }
    
    init(id: Int, guests: Int = 0) {
        self.id = id
        self.guests = guests
    }
}

