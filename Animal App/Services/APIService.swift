//
//  APIService.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import Alamofire
import Foundation
import SwiftyJSON

typealias CompletionHandler<T: Decodable> = (Result<T, Error>) -> Void
typealias CompletionHandlerSwifty = (Swift.Result<JSON, Error>) -> Void

protocol IAPIService {
    func getAnimalList(animal: String, completion: @escaping CompletionHandlerSwifty)
    func getImageAnimal(animal: String, completion: @escaping CompletionHandlerSwifty)
}

class APIService: IAPIService {
    func getAnimalList(animal: String, completion: @escaping CompletionHandlerSwifty) {
        request(endpoint: AnimalEndpoint.getAnimalList(animal: animal), completion: completion)
    }

    func getImageAnimal(animal: String, completion: @escaping CompletionHandlerSwifty) {
        request(endpoint: AnimalEndpoint.getImageAnimal(animal: animal), completion: completion)
    }

    private func request<T: IEndpoint>(endpoint: T, completion: @escaping CompletionHandlerSwifty) {
        AF.request(
            endpoint.path,
            method: endpoint.method,
            parameters: endpoint.parameter,
            encoding: endpoint.encoding,
            headers: endpoint.header

        ).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let json = try JSON(data: data)
                    completion(.success(json))
                } catch {
                    print("Error decoding JSON: \(error)")
                    completion(.failure(error))
                }
            case .failure(let error):
                print("Error fetching data: \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
}
