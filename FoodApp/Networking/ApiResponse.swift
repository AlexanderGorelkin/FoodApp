//
//  ApiResponse.swift
//  FoodApp
//
//  Created by Александр Горелкин on 17.02.2023.
//

import Foundation


struct ApiResponse<T: Decodable>: Decodable {
    
    
    let status: Int
    let message: String?
    let data: T?
    let error: String?
    
    
}
