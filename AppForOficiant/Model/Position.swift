//
//  PositionModel.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import Foundation

struct Position: Identifiable {
    let id = UUID().uuidString
    let dish: Dish
    let count: Int
    var cost: Int {dish.price * count}
}
