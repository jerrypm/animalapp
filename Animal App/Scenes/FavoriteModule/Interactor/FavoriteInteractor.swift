//
//  FavoriteInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IFavoriteInteractor: AnyObject {
    func loadLocaldata()
}

class FavoriteInteractor: IFavoriteInteractor {
    private let apiService: IAPIService
    var presenter: IFavoritePresenter

    init(presenter: IFavoritePresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func loadLocaldata() {
        let model = BookmarkDataService.shared.savedEntities
        presenter.presentListFavorite(data: model)
    }
}
