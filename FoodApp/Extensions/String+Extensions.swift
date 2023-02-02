//
//  String+Extensions.swift
//  FoodApp
//
//  Created by Александр Горелкин on 03.02.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
