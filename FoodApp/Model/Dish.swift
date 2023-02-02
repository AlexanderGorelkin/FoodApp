//
//  Dish.swift
//  FoodApp
//
//  Created by Александр Горелкин on 03.02.2023.
//

import Foundation



struct Dish {
    let id,
        name,
        description,
        image: String?
    let calories: Int?
    
    
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
