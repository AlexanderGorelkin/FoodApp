//
//  DishCategory.swift
//  FoodApp
//
//  Created by Александр Горелкин on 02.02.2023.
//

import Foundation


struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
