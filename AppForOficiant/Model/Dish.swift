//
//  DishModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import Foundation

struct Dish: Identifiable, Hashable {
    
    let id = UUID().uuidString
    let title: String
    let price: Int
    
    static var mockData: [Dish] = [
        .init(title: "Shaverma", price: 240),
        .init(title: "samsa", price: 100),
        .init(title: "steyck", price: 760),
        .init(title: "MORS", price: 120),
        .init(title: "Tea", price: 340),
    ]
}
