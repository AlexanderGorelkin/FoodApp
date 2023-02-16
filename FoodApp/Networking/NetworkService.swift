//
//  NetworkService.swift
//  FoodApp
//
//  Created by Александр Горелкин on 16.02.2023.
//

import Foundation

struct NetworkService {
    
    
    
    /// Функция, которая помогает создать URLRequest
    /// - Parameters:
    ///   - route: путь
    ///   - method: метод запроса
    ///   - parameters: данные, которые требуеются для получения информации
    /// - Returns: Возвращает URLRequest
    private func createRequest(route: Route,
                               method: Method,
                               parameters: [String: Any]? = nil) -> URLRequest? {
        let urlString = Route.baseUrl + route.description
        guard let url = urlString.asUrl else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        if let params = parameters {
            switch method {
            case .get:
                
                var urlComponent = URLComponents(string: urlString)
                urlComponent?.queryItems = params.map { URLQueryItem(name: $0, value: "\($1)") }
                urlRequest.url = urlComponent?.url
                
            case .post, .delete, .patch:
                let bodyData = try? JSONSerialization.data(withJSONObject: params, options: [])
                urlRequest.httpBody = bodyData
                
            }
        }
        return urlRequest
        
    }
}