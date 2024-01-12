//
//  APIService.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import Alamofire
import Foundation

typealias CompletionHandler<T: Decodable> = (Result<T, Error>) -> ()

protocol IAPIService {
    func getAnimalList(completion: @escaping CompletionHandler<AnimalBaseModel>)
    func getImageAnimal(completion: @escaping CompletionHandler<ImageBaseModel>)
}

class APIService: NSObject {
    func getAnimalList(completion: @escaping CompletionHandler<AnimalBaseModel>) {
        request(url: SC.ninjasBaseURL, completion: completion)
    }

    func getImageAnimal(completion: @escaping CompletionHandler<ImageBaseModel>) {
        request(url: SC.pexelsbBaseURL, completion: completion)
    }

    private func request<T: Decodable>(url: String, completion: @escaping CompletionHandler<T>) {
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let jsonDecoder = JSONDecoder()
                    let decodedData = try jsonDecoder.decode(T.self, from: data)
                    completion(.success(decodedData))
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
