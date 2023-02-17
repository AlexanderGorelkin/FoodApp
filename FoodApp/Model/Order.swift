//
//  Order.swift
//  FoodApp
//
//  Created by Александр Горелкин on 16.02.2023.
//

import Foundation


struct Order: Decodable {
    let id, name: String?
    let dish: Dish?
}
