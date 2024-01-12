//
//  FavoriteInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IFavoriteInteractor: AnyObject {}

class FavoriteInteractor: IFavoriteInteractor {
    private let apiService: IAPIService
    var presenter: IFavoritePresenter

    init(presenter: IFavoritePresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }
}
