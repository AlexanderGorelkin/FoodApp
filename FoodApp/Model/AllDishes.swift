//
//  AllDishes.swift
//  FoodApp
//
//  Created by Александр Горелкин on 17.02.2023.
//

import Foundation


struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
