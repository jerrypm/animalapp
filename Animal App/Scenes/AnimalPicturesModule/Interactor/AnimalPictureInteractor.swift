//
//  AnimalPictureInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IAnimalPictureInteractor: AnyObject {}

class AnimalPictureInteractor: IAnimalPictureInteractor {
    private let apiService: IAPIService
    var presenter: IAnimalPicturePresenter

    init(presenter: IAnimalPicturePresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }
}
