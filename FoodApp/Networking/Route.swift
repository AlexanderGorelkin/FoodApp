//
//  Route.swift
//  FoodApp
//
//  Created by Александр Горелкин on 16.02.2023.
//

import Foundation


enum Route {
    
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        switch self {
            
        case .temp:
            return "/dishes/cat1"
        }
        
        
    }
    
    
}
